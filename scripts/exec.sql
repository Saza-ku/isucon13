/*
SELECT table_name, engine, table_rows, avg_row_length, floor((data_length+index_length)/1024/1024) as allMB, floor((data_length)/1024/1024) as dMB, floor((index_length)/1024/1024) as iMB FROM information_schema.tables WHERE table_schema=database() ORDER BY (data_length+index_length) DESC;
*/

/*
RENAME USER 'isucon'@'localhost' to 'isucon'@'%';
*/

/*
RENAME USER 'isudns'@'localhost' to 'isudns'@'%';
*/

ALTER TABLE icons ADD icon_path VARCHAR(255) NOT NULL DEFAULT '../img/NoImage.jpg';
-- ALTER TABLE icons DROP icon_path;
