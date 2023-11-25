/*
SELECT table_name, engine, table_rows, avg_row_length, floor((data_length+index_length)/1024/1024) as allMB, floor((data_length)/1024/1024) as dMB, floor((index_length)/1024/1024) as iMB FROM information_schema.tables WHERE table_schema=database() ORDER BY (data_length+index_length) DESC;
*/

/*
RENAME USER 'isucon'@'localhost' to 'isucon'@'%';
*/

/*
RENAME USER 'isudns'@'localhost' to 'isudns'@'%';
*/

/* add index for SELECT * FROM livestream_tags WHERE livestream_id = N */
-- ALTER TABLE `livestream_tags` ADD INDEX `livestream_id` (`livestream_id`);

-- ALTER TABLE icons ADD icon_path VARCHAR(255) NOT NULL DEFAULT '../img/NoImage.jpg';
-- ALTER TABLE icons DROP icon_path;

-- ALTER TABLE `ng_words` ADD INDEX `ng_words_user_livestream_index` (`user_id`,`livestream_id`);

-- ALTER TABLE `livecomments` DROP INDEX `livestream_id_created_idx`;
-- ALTER TABLE `livecomments` ADD INDEX `comm_livestream_id_created_idx` (`livestream_id` ASC, `created_at` DESC);

-- ALTER TABLE `reactions` ADD INDEX `react_livestream_id_created_idx` (`livestream_id` ASC, `created_at` DESC);
ALTER TABLE `theme` ADD INDEX `theme_user_index` (`user_id`);
