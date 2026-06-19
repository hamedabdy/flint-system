#!/bin/bash
set -Eeuo pipefail

DB_BASE_PATH="/docker-entrypoint-initdb.d"
TEMPLATE="$DB_BASE_PATH/init.sql.template"
DB_BACKUP_PATH="$DB_BASE_PATH/db-backups"
OUTPUT="/tmp/20-init.sql"
MARIA_DB_SOCKET="/run/mysqld/mysqld.sock"

# Find the latest .sql file in both backup directories
BACKUP_FILE=$(ls -1t "$DB_BACKUP_PATH"/*.sql 2>/dev/null | head -n 1 || true)

if [ -z "$BACKUP_FILE" ]; then
  echo "No backup file found in $DB_BACKUP_PATH"
  exit 1
fi

echo "🔍 The script selected this backup file: $BACKUP_FILE"
echo "🚀 First initialization detected."

if [ -f "$TEMPLATE" ]; then
  echo "📝 Generating init SQL to /tmp/..."
  sed -e "s/\${MYSQL_DATABASE}/$MYSQL_DATABASE/g" \
      -e "s/\${MYSQL_USER}/$MYSQL_USER/g" \
      -e "s/\${MYSQL_PASSWORD}/$MYSQL_PASSWORD/g" \
      "$TEMPLATE" > "$OUTPUT"
  
  echo "⏳ Waiting for MariaDB socket..."
  until mariadb-admin ping --socket=/run/mariadb/mariadb.sock --silent; do
    sleep 1
  done

  echo "⚙️ Executing template SQL..."
  mariadb --socket=/run/mariadb/mariadb.sock -uroot -p"${MYSQL_ROOT_PASSWORD}" < "$OUTPUT"
fi

if [ -n "$BACKUP_FILE" ] && [ -f "$BACKUP_FILE" ]; then
  echo "📦 Restoring backup file to ${MYSQL_DATABASE}..."
  mariadb --socket=/run/mariadb/mariadb.sock -uroot -p"${MYSQL_ROOT_PASSWORD}" "${MYSQL_DATABASE}" < "$BACKUP_FILE"
fi

echo "✅ Script complete."