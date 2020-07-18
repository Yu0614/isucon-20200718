#!/bin/bash -eu

echo 'init process'

# Add index into database (for memos.created_at & memos.is_private)
echo 'show databases; use isucon; ALTER TABLE memos ADD INDEX index_on_created_and_is_private(created_at, is_private);' | mysql -uisucon -pisucon