USE study;

/*alias(��Ī)*/

SELECT * FROM player AS p;

SELECT p.name FROM player AS p;

SELECT name AS nm FROM player;

SELECT p.name AS nm FROM player AS p;



/*�ڷ��� ���� ���̺�*/
CREATE TABLE data_type (
	col_varchar VARCHAR(100)
	, col_int INT(11)
	, col_decimal DECIMAL(10, 2)
	, col_date DATE
	, col_datetime DATETIME
) CHARSET=utf8;

INSERT INTO data_type (col_varchar, col_int, col_decimal, col_date, col_datetime)
VALUES(�����ڿ���, 1, 11.11, NOW(), NOW());

INSERT INTO data_type (col_varchar, col_int, col_decimal, col_date, col_datetime)
VALUES(�����ڿ���, 1.5, 11.115, NOW(), NOW());

SELECT * FROM data_type;

/*���̺� ��� �� ����*/
TRUNCATE TABLE data_type;

/*���̺� ����*/
DROP TABLE data_type;

/*���̺� �� �Ӽ� ����*/
/*�� �߰�*/
ALTER TABLE student ADD major VARCHAR(20);
/*ALTER TABLE student ADD major VARCHAR(20) DEFAULT '��ǻ�� ����' NOT NULL;*/

/*�� �Ӽ� ����*/
ALTER TABLE student MODIFY major VARCHAR(40);
/*ALTER TABLE student MODIFY VARCHAR(40) DEFAULT '�����а�';*/

/*�� �̸� ����*/
ALTER TABLE student CHANGE major new_major VARCHAR(40);

/*�� ����*/
ALTER TABLE student DROP new_major;




/*UNION ALL - ������(�ߺ�O)*/
SELECT name FROM student
UNION ALL
SELECT name FROM player;

/*UNION - ������(�ߺ�X)*/
SELECT name FROM student
UNION
SELECT name FROM player;



/*���̺� ����*/

/*������ ���̺�*/
CREATE TABLE sponsor (
	id VARCHAR(20) NOT NULL,
	name VARCHAR(20) NOT NULL,
	PRIMARY KEY(id)
) CHARSET=utf8;

INSERT INTO sponsor (id, name) VALUES ('01', '����Ű');
INSERT INTO sponsor (id, name) VALUES ('02', '�Ƶ�ٽ�');
INSERT INTO sponsor (id, name) VALUES ('03', '�Ｚ');
INSERT INTO sponsor (id, name) VALUES ('04', '����');


/*player sponsor �÷� �߰�*/
ALTER TABLE player ADD sponsor VARCHAR(20);
/*�޽�*/
UPDATE player SET sponsor = '01' WHERE seq = 1;
/*������*/
UPDATE player SET sponsor = '02' WHERE seq = 2;
/*�ڼ�ȣ*/
UPDATE player SET sponsor = '03' WHERE seq = 3;
/*�ɱ���*/
UPDATE player SET sponsor = '05' WHERE seq = 4;
/*������*/
UPDATE player SET sponsor = '04' WHERE seq = 5;


/*INNER JOIN - ������*/
SELECT 
	p.name
	, s.name AS sponsor 
FROM player AS p
INNER JOIN sponsor AS s 
	ON p.sponsor = s.id;
	

/*LEFT OUTER JOIN - ������ �������� �������� �����͸� �����´�(������ null)*/
SELECT 
	p.name
	, s.name AS sponsor 
FROM player AS p
LEFT OUTER JOIN sponsor AS s 
	ON p.sponsor = s.id;
	

/*RIGHT OUTER JOIN - �������� �������� �������� �����͸� �����´�(������ null)*/
SELECT 
	p.name
	, s.name AS sponsor 
FROM player AS p
RIGHT OUTER JOIN sponsor AS s 
	ON p.sponsor = s.id;