/*study �����ͺ��̽� ���*/
USE study;

/*player ���̺��� ��� ������ ��ȸ*/
SELECT * FROM player;

/*player ���̺��� ��� ������ ����*/
DELETE FROM player;

/*player ���̺� ����*/
DROP TABLE player;

/*player ���̺� ����*/
CREATE TABLE player (
	seq INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(20),
	age INT,
	company VARCHAR(20),
	country VARCHAR(20),
	PRIMARY KEY(seq)
) CHARSET=utf8;

/*player���̺� ������ �߰�*/
INSERT INTO player
(seq, name, age, company, country)
VALUES(1, '�޽�', 37, '�ٸ����γ�', '�Ƹ���Ƽ��');

/*player���̺� ������ �߰�*/
INSERT INTO player
(seq, name, age, company, country)
VALUES(2, '������', 39, '����', '��������');

/*player���̺� ������ �߰�*/
INSERT INTO player
(seq, name, age, company, country)
VALUES(3, '�ڼ�ȣ', 29, '�ٸ����γ�', '�ѱ�');

/*player���̺� ������ �߰�*/
INSERT INTO player
(seq, name, age, company, country)
VALUES(4, '�ɱ���', 36, '��Ʈ��', '�ѱ�');

/*player���̺� ������ �߰�*/
INSERT INTO player
(seq, name, age, company, country)
VALUES(5, '������', 33, null, '�ѱ�');

/*player ���̺��� ��� ������ ��ȸ*/
SELECT * FROM player;