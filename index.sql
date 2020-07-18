use isucon;
ALTER TABLE `memos`
    ADD INDEX index_on_created_and_is_private(`created_at`, `is_private`),
    ADD INDEX index_on_user_and_created_at(`user`, `created_at`);
ALTER TABLE `users` ADD INDEX index_on_username(`username`);