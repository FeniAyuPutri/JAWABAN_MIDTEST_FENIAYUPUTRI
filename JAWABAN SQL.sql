-- NOMOR 1
-- query buat table
CREATE TABLE input_table (
  id INT,
  num INT
);

-- query buat insert
INSERT INTO input_table (id, num) VALUES (1, 1);
INSERT INTO input_table (id, num) VALUES (2, 2);
INSERT INTO input_table (id, num) VALUES (3, 2);
INSERT INTO input_table (id, num) VALUES (4, 2);
INSERT INTO input_table (id, num) VALUES (5, 2);
INSERT INTO input_table (id, num) VALUES (6, 1);
INSERT INTO input_table (id, num) VALUES (7, 1);
INSERT INTO input_table (id, num) VALUES (8, 1);
INSERT INTO input_table (id, num) VALUES (9, 1);

-- querinya
SELECT DISTINCT num
FROM input_table t1
WHERE EXISTS (
    SELECT 1
    FROM input_table t2
    WHERE t2.id = t1.id + 1 AND t2.num = t1.num
) AND EXISTS (
    SELECT 1
    FROM input_table t3
    WHERE t3.id = t1.id + 2 AND t3.num = t1.num
)
ORDER BY num ASC;

-- NOMOR 2
-- buat tablenya 
CREATE TABLE email_list (
    email VARCHAR(255) NOT NULL CHECK (email LIKE '%@%._%')
);

-- query insert
INSERT INTO email_list (email) VALUES ('feni123@gmail.com');
INSERT INTO email_list (email) VALUES ('anis4@gmail.com');
INSERT INTO email_list (email) VALUES ('ayu7@yahoo.com');
INSERT INTO email_list (email) VALUES ('jek123@gmail.com');
INSERT INTO email_list (email) VALUES ('putri18@gmail.com');
INSERT INTO email_list (email) VALUES ('gifa34@gmail.com');
INSERT INTO email_list (email) VALUES ('fida20@bing.com');

--querynya
SELECT email FROM email_list;
