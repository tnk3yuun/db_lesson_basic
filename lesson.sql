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