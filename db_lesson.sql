/**Q1**/

create table `departments`(
`department_id` INT unsigned NOT NULL ,
`name` varchar(20) NOT NULL,
`created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
`updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

ALTER TABLE `departments`
  MODIFY `department_id` INT UNSIGNED AUTO_INCREMENT;



  /**Q2**/

ALTER TABLE people ADD COLUMN department_id  int unsigned AFTER email;


  /**Q3**/

/**追加する部署一覧(departments)**/
INSERT INTO `departments` (`department_id`, `name`)
VALUES
  (01, '営業'),
  (02, '開発'),
  (03, '経理'),
  (04, '人事'),
  (05, '情報システム');  


/**追加する人の条件(people)**/
INSERT INTO `people` (`name`, `department_id`)
VALUES
('営業①', 01),
('営業②', 01),
('営業③', 01),
('開発①', 02),
('開発②', 02),
('開発③', 02),
('開発④', 02),
('経理①', 03),
('人事①', 04),
('情報①', 05);


/**追加する日報の条件(reports)**/
INSERT INTO `reports` (`person_id`, `content`)
VALUES
  ('営業①の日報です。', '営業①')
  ('営業②の日報です。', '営業②')
  ('営業③の日報です。', '営業③')
  ('開発①の日報です。', '開発①')
  ('開発②の日報です。', '開発②')
  ('開発③の日報です。', '開発③')
  ('開発④の日報です。', '開発④')
  ('経理①の日報です。', '経理①')
  ('人事①の日報です。', '人事①')
  ('情報①の日報です。', '情報①');


/**Q4**/
UPDATE 
  people 
SET
  department_id = 1 
where
  department_id is NULL;


/**Q5**/
SELECT
  name, age
from
  people
where
  gender = 1
order by 
  age DESC;


/**Q6**/
SELECT
  レコードからどのカラムを取得するか指定すること。
FROM
  どのテーブルか指定すること。
WHERE
  条件に合うカラムを取得すること。
ORDER BY
  レコードの順番を並び替えること。