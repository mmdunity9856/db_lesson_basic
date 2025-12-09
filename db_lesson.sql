/**Q1**/

CREATE TABLE`departments`(
`department_id` INT unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20) NOT NULL,
`created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
`updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);


  /**Q2**/

ALTER TABLE people ADD COLUMN department_id  INT unsigned AFTER email;


  /**Q3**/

/**追加する部署一覧(departments)**/
INSERT INTO `departments` (`department_id`, `name`)
VALUES
  (1, '営業'),
  (2, '開発'),
  (3, '経理'),
  (4, '人事'),
  (5, '情報システム');  


/**追加する人の条件(people)**/
INSERT INTO `people` (`name`, `department_id`)
VALUES
('営業1', 1),
('営業2', 1),
('営業3', 1),
('開発1', 2),
('開発2', 2),
('開発3', 2),
('開発4', 2),
('経理1', 3),
('人事1', 4),
('情報1', 5);


/**追加する日報の条件(reports)**/
INSERT INTO `reports` (`person_id`, `content`)
VALUES
('1', '営業1の日報です。'),
('1', '営業2の日報です。'),
('1', '営業3の日報です。'),
('2', '開発1の日報です。'),
('2', '開発2の日報です。'),
('2', '開発3の日報です。'),
('2', '開発4の日報です。'),
('3', '経理1の日報です。'),
('4', '人事1の日報です。'),
('5', '情報1の日報です。');


/**Q4**/
UPDATE 
  people 
SET
  department_id = 1 
WHERE
  department_id IS NULL;


/**Q5**/
SELECT
  NAME, age
FROM
  people
WHERE
  gender = 1
 ORDER BY 
  age DESC;


/**Q6**/
SELECT
  どのテーブルから、どのカラムを取得するか指定すること。
FROM
  どのテーブルか指定すること。
WHERE
  条件に合うカラムを取得すること。
ORDER BY
  レコードの順番を並び替えてカラムを取得すること。
