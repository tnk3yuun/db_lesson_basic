USE db_lesson;

INSERT INTO people(name, email, age, gender)
VALUES
('鈴木たかし', 'suzuki@gizumo.jp', 20, 1),
('田中ゆうこ', 'tanaka@gizumo.jp', 25, 2),
('福田だいすけ', 'fukuda@gizumo.jp', 42, 1),
('豊島はなこ', 'toyoshima@gizumo.jp', 34, 2),
('山田けん', 'yamada@example.com', 25, 1),
('不思議沢みちこ', 'fushigi@example.com', 29, 2),
('佐藤みさき', 'sato@example.com', 28, 2),
('中村そうた', 'nakamura@example.com', 30, 1),
('高橋あや', 'takahashi@example.com', 24, 2),
('加藤りな', 'kato@example.com', 27, 2);

INSERT INTO reports(person_id, content)
VALUES
(1, '日報1'),
(1, '日報2'),
(2, '日報3'),
(3, '日報4'),
(4, '日報5'),
(5, '日報6'),
(6, '日報7'),
(7, '日報8'),
(9, '日報9'),
(1, '日報10'),
(999, '存在しないユーザーの日報');

USE db_lesson;

SELECT *
FROM people;

SELECT *
FROM reports;

MariaDB [db_lesson]>  SELECT * FROM people;
+-----------+----------------+-----------------------+---------------+------+--------+---------------------+---------------------+
| person_id | name           | email                 | department_id | age  | gender | created_at          | updated_at          |
+-----------+----------------+-----------------------+---------------+------+--------+---------------------+---------------------+
|        31 | 鈴木たかし     | suzuki@gizumo.jp      |          NULL |   20 |      1 | 2026-05-09 13:29:01 | 2026-05-11 14:27:50 |
|        32 | 田中ゆうこ     | tanaka@gizumo.jp      |          NULL |   25 |      2 | 2026-05-09 13:29:01 | 2026-05-11 15:15:37 |
|        33 | 福田だいすけ   | fukuda@gizumo.jp      |          NULL |   42 |      1 | 2026-05-09 13:29:01 | 2026-05-11 14:32:03 |
|        34 | 豊島はなこ     | toyoshima@gizumo.jp   |          NULL |   34 |      2 | 2026-05-09 13:29:01 | 2026-05-11 14:32:57 |
|        35 | 山田りょうすけ | yamada@example.com    |          NULL |   25 |      1 | 2026-05-09 13:29:01 | 2026-05-11 15:07:09 |
|        36 | 不思議けんた   | fushigi@example.com   |          NULL |   29 |      2 | 2026-05-09 13:29:01 | 2026-05-11 14:52:56 |
|        37 | 佐藤ゆうり     | sato@example.com      |          NULL |   28 |      2 | 2026-05-09 13:29:01 | 2026-05-11 15:03:12 |
|        38 | 中村ゆうた     | nakamura@example.com  |          NULL |   30 |      1 | 2026-05-09 13:29:01 | 2026-05-11 14:58:19 |
|        39 | 高橋らん       | takahashi@example.com |          NULL |   24 |      2 | 2026-05-09 13:29:01 | 2026-05-11 14:59:16 |
|        40 | 加藤りこ       | kato@example.com      |          NULL |   27 |      2 | 2026-05-09 13:29:01 | 2026-05-11 15:01:17 |
|        53 | 山田さん       | NULL                  |             1 |   25 |      1 | 2026-05-14 14:40:29 | 2026-05-14 14:40:29 |
|        54 | 佐藤さん       | NULL                  |             1 |   20 |      2 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        55 | 加藤さん       | NULL                  |             1 |   28 |      1 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        56 | 田中さん       | NULL                  |             2 |   22 |      2 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        57 | 中田さん       | NULL                  |             2 |   25 |      2 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        58 | 森田さん       | NULL                  |             2 |   26 |      1 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        59 | 太郎さん       | NULL                  |             2 |   27 |      2 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        60 | さちこさん     | NULL                  |             3 |   22 |      2 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        61 | 花子さん       | NULL                  |             4 |   25 |      2 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        62 | だいすけさん   | NULL                  |             5 |   26 |      1 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
+-----------+----------------+-----------------------+---------------+------+--------+---------------------+---------------------+
20 rows in set (0.001 sec)

+-----------+-----------+--------------------------------+---------------------+---------------------+
| report_id | person_id | content                        | created_at          | updated_at          |
+-----------+-----------+--------------------------------+---------------------+---------------------+
|        13 |         1 | タピオカミルクティー飲みたい   | 2026-05-09 13:29:01 | 2026-05-14 17:14:12 |
|        14 |         1 | 韓国に旅行にいきたいな~        | 2026-05-09 13:29:01 | 2026-05-14 16:34:28 |
|        15 |         2 | 休みがたくさんほしいなー       | 2026-05-09 13:29:01 | 2026-05-14 16:36:02 |
|        16 |         3 | たくさんアイス食べたい         | 2026-05-09 13:29:01 | 2026-05-14 16:42:58 |
|        17 |         4 | 友達とたくさん遊んだ           | 2026-05-09 13:29:01 | 2026-05-14 16:45:05 |
|        18 |         5 | 麻辣たん食べたいなー           | 2026-05-09 13:29:01 | 2026-05-14 17:05:46 |
|        19 |         6 | 毎日たくさん寝たいなー         | 2026-05-09 13:29:01 | 2026-05-14 17:07:06 |
|        20 |         7 | つぎはネイル何色にしようかなー | 2026-05-09 13:29:01 | 2026-05-14 17:10:21 |
|        21 |         9 | 今日は夜更かししちゃおう       | 2026-05-09 13:29:01 | 2026-05-14 17:11:28 |
|        22 |         1 | ピンク色が好きです             | 2026-05-09 13:29:01 | 2026-05-14 17:12:36 |
|        23 |       999 | 私は存在しません               | 2026-05-09 13:29:01 | 2026-05-14 17:16:10 |
+-----------+-----------+--------------------------------+---------------------+---------------------+

MariaDB [db_lesson]> SELECT * FROM people;
+-----------+----------------+-----------------------+---------------+------+--------+---------------------+---------------------+
| person_id | name           | email                 | department_id | age  | gender | created_at          | updated_at          |
+-----------+----------------+-----------------------+---------------+------+--------+---------------------+---------------------+
|        31 | 鈴木たかし     | suzuki@gizumo.jp      |             3 |   20 |      1 | 2026-05-09 13:29:01 | 2026-05-14 17:33:01 |
|        32 | 田中ゆうこ     | tanaka@gizumo.jp      |             2 |   25 |      2 | 2026-05-09 13:29:01 | 2026-05-14 17:34:11 |
|        33 | 福田だいすけ   | fukuda@gizumo.jp      |             3 |   42 |      1 | 2026-05-09 13:29:01 | 2026-05-14 17:35:14 |
|        34 | 豊島はなこ     | toyoshima@gizumo.jp   |             5 |   34 |      2 | 2026-05-09 13:29:01 | 2026-05-14 17:36:24 |
|        35 | 山田りょうすけ | yamada@example.com    |             4 |   25 |      1 | 2026-05-09 13:29:01 | 2026-05-14 17:37:24 |
|        36 | 不思議けんた   | fushigi@example.com   |             2 |   29 |      2 | 2026-05-09 13:29:01 | 2026-05-14 17:38:37 |
|        37 | 佐藤ゆうり     | sato@example.com      |             3 |   28 |      2 | 2026-05-09 13:29:01 | 2026-05-14 17:39:41 |
|        38 | 中村ゆうた     | nakamura@example.com  |             2 |   30 |      1 | 2026-05-09 13:29:01 | 2026-05-14 17:41:22 |
|        54 | 佐藤さん       | NULL                  |             1 |   20 |      2 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        55 | 加藤さん       | NULL                  |             1 |   28 |      1 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        56 | 田中さん       | NULL                  |             2 |   22 |      2 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        57 | 中田さん       | NULL                  |             2 |   25 |      2 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        58 | 森田さん       | NULL                  |             2 |   26 |      1 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        59 | 太郎さん       | NULL                  |             2 |   27 |      2 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        60 | さちこさん     | NULL                  |             3 |   22 |      2 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        61 | 花子さん       | NULL                  |             4 |   25 |      2 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
|        62 | だいすけさん   | NULL                  |             5 |   26 |      1 | 2026-05-14 14:44:08 | 2026-05-14 14:44:08 |
+-----------+----------------+-----------------------+---------------+------+--------+---------------------+---------------------+
Q1
CREATE TABLE departments (
    department_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (department_id)

Q2
ALTER TABLE people
ADD COLUMN department_id INT UNSIGNED
AFTER email;

DESC people;
+---------------+---------------------+------+-----+---------------------+-------------------------------+
| Field         | Type                | Null | Key | Default             | Extra                         |
+---------------+---------------------+------+-----+---------------------+-------------------------------+
| person_id     | int(10) unsigned    | NO   | PRI | NULL                | auto_increment                |
| name          | varchar(20)         | NO   |     | NULL                |                               |
| email         | varchar(255)        | YES  | UNI | NULL                |                               |
| department_id | int(10) unsigned    | YES  |     | NULL                |                               |
| age           | tinyint(3) unsigned | YES  |     | NULL                |                               |
| gender        | tinyint(4)          | YES  |     | NULL                |                               |
| created_at    | timestamp           | NO   |     | current_timestamp() |                               |
| updated_at    | timestamp           | NO   |     | current_timestamp() | on update current_timestamp() |
+---------------+---------------------+------+-----+---------------------+-------------------------------+
8 rows in set (0.167 sec)


Q3
departments
INSERT INTO departments(name)
VALUES
('営業'),
('開発'),
('経理'),
('人事'),
('情報システム');

people 
INSERT INTO people
(name, email, department_id, age, gender)
VALUES
('山田さん', NULL, 1, 25, 1),
('佐藤さん', NULL, 1, 20, 2),
('加藤さん', NULL, 1, 28, 1),
('田中さん', NULL, 2, 22, 2),
('中田さん', NULL, 2, 25, 2),
('森田さん', NULL, 2, 26, 1),
('太郎さん', NULL, 2, 27, 2),
('さちこさん', NULL, 3, 22, 2),
('花子さん', NULL, 4, 25, 2),
('だいすけさん', NULL, 5, 26, 1);

reports
INSERT INTO reports
(person_id, content)
VALUES
(1, 'タピオカミルクティー飲みたい'),
(1, '韓国に旅行にいきたいな~'),
(2, '休みがたくさんほしいなー'),
(3, 'たくさんアイス食べたい'),
(4, '友達とたくさん遊んだ'),
(5, '麻辣たん食べたいなー'),
(6, '毎日たくさん寝たいなー'),
(7, 'つぎはネイル何色にしようかなー'),
(9, '今日は夜更かししちゃおう'),
(1, 'ピンク色が好きです'),
(999,'私は存在しません');


Q4
UPDATE　people
SET department_id = 3
WHERE name = '鈴木たかし';

UPDATE　people
SET department_id = 2
WHERE name = '田中ゆうこ';

UPDATE　people
SET department_id = 3
WHERE name = '福田だいすけ';

UPDATE　people
SET department_id = 5
WHERE name = '豊島はなこ';

UPDATE　people
SET department_id = 4
WHERE name = '山田りょうすけ';

UPDATE　people
SET department_id = 2
WHERE name = '不思議けんた';

UPDATE　people
SET department_id = 3
WHERE name = '佐藤ゆうり';

UPDATE　people
SET department_id = 2
WHERE name = '中村ゆうた';

UPDATE　people
SET department_id = 4
WHERE name = '高橋らん';

UPDATE　people
SET department_id = 5
WHERE name = '加藤りこ';



Q5
SELECT name, age
    -> FROM people
    -> WHERE gender = 1
    -> ORDER BY age DESC;

+----------------+------+
| name           | age  |
+----------------+------+
| 福田だいすけ   |   42 |
| 中村ゆうた     |   30 |
| 加藤さん       |   28 |
| 森田さん       |   26 |
| だいすけさん   |   26 |
| 山田りょうすけ |   25 |
| 山田さん       |   25 |
| 鈴木たかし     |   20 |
+----------------+------+
8 rows in set (0.003 sec)

Q6
SELECT
  `name`, `email`, `age`
  名前　メールアドレス　年齢のカラムの内容を確認したい
FROM
  `people`
  peopleテーブルの内容を確認したい　
WHERE
  `department_id` = 1
  department_id　= 1のレコードのデータ修正をしたい
ORDER BY
  `created_at`;
  カラムcreated_at`（作成日時）を自ら並び替えたい

Q7　SELECT name
FROM people
WHERE (gender = 2 AND age BETWEEN 20 AND 29)
   OR (gender = 1 AND age BETWEEN 40 AND 49);
 name         |
+--------------+
| 田中ゆうこ   |
| 福田だいすけ |
| 不思議けんた |
| 佐藤ゆうり   |
| 高橋らん     |
| 加藤りこ     |
| 佐藤さん     |
| 田中さん     |
| 中田さん     |
| 太郎さん     |
| さちこさん   |
| 花子さん     |
+--------------+


Q8 SELECT 'department_id', age
-> FROM people
WHERE department_id = 1
ORDER BY age DESC;

Q9
SELECT AVG(age) AS average_age
FROM people
WHERE department_id = 2
AND gender = 2;

 average_age |
+-------------+
|     25.6000 |
+-------------+
1 row in set (0.070 sec)
25.6歳

Ｑ10
SELECT people.name, departments.name, reports.content
FROM people
JOIN departments
ON people.department_id = departments.department_id
JOIN reports
ON people.person_id = reports.person_id;;

+----------------+-----------------+--------------------------------+
| name           | department_name | content                        |
+----------------+-----------------+--------------------------------+
| 田中ゆうこ     | 開発            | 韓国に旅行にいきたいな~        |
| 不思議けんた   | 開発            | 麻辣たん食べたいなー           |
| 中村ゆうた     | 開発            | つぎはネイル何色にしようかなー |
| 鈴木たかし     | 経理            | タピオカミルクティー飲みたい   |
| 福田だいすけ   | 経理            | 休みがたくさんほしいなー       |
| 佐藤ゆうり     | 経理            | 毎日たくさん寝たいなー         |
| 山田りょうすけ | 人事            | 友達とたくさん遊んだ           |
| 高橋らん       | 人事            | 今日は夜更かししちゃおう       |
| 豊島はなこ     | 情報システム    | たくさんアイス食べたい         |
| 加藤りこ       | 情報システム    | ピンク色が好きです             |
+----------------+-----------------+--------------------------------+

Q11
SELECT people.name
FROM people
LEFT JOIN reports
  ON people.person_id = reports.person_id
WHERE reports.person_id IS NULL;
+--------------+
| name         |
+--------------+
| 山田さん     |
| 佐藤さん     |
| 加藤さん     |
| 田中さん     |
| 中田さん     |
| 森田さん     |
| 太郎さん     |
| さちこさん   |
| 花子さん     |
| だいすけさん |
+--------------+
