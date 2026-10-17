#!/bin/bash
# Restore the latest MariaDB backup from the local db-backups directory.

set -euo pipefail

# Default DB config (from database.js)
DB_HOST="${DB_HOST:-localhost}"
DB_USER="${DB_USER:-admin}"
DB_PASSWORD="${DB_PASSWORD:-hamed}"
DB_NAME="${DB_DATABASE:-node-project}"

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="${SCRIPT_DIR}/db-backups"

if [[ ! -d "$BACKUP_DIR" ]]; then
  echo "Backup directory not found: $BACKUP_DIR"
  exit 1
fi

# Find the newest .sql file in the backup directory.
mapfile -d '' BACKUP_FILES < <(find "$BACKUP_DIR" -maxdepth 1 -type f -name '*.sql' -printf '%T@ %p\0' | sort -z -nr)

if [[ ${#BACKUP_FILES[@]} -eq 0 ]]; then
  echo "No backup file found in $BACKUP_DIR"
  exit 1
fi

BACKUP_FILE="${BACKUP_FILES[0]#* }"

if [[ ! -f "$BACKUP_FILE" ]]; then
  echo "Backup file not found: $BACKUP_FILE"
  exit 1
fi

echo "Ensuring database $DB_NAME exists on $DB_HOST..."
if ! mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS \`$DB_NAME\`;"; then
  echo "Failed to create database $DB_NAME."
  exit 1
fi

echo "Restoring backup: $BACKUP_FILE to database: $DB_NAME on $DB_HOST"
if ! mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" < "$BACKUP_FILE"; then
  echo "Database restore failed."
  exit 1
fi

echo "Database restored successfully from $BACKUP_FILE."
echo "Showing up to 10 tables in $DB_NAME to confirm restore:"
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" -D "$DB_NAME" -e "SHOW TABLES;" | head -n 11
