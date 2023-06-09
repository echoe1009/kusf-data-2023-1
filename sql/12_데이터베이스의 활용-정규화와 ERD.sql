USE study;

/*����*/

/*������ȭ*/
/*�������� ���̺�*/
CREATE TABLE college_lecture_history (
	student_id VARCHAR(20)
	, name VARCHAR(20)
	, lecture VARCHAR(100)
	, professor VARCHAR(20)
	, professor_number VARCHAR(40)
) CHARSET=utf8;

INSERT INTO college_lecture_history (student_id, name, lecture, professor, professor_number)
VALUES ('6210062', '������', 'JAVA, SQL', '���ӽ� �Ƽ� ����, ��Ƽ', '010-1111-1111, 010-2222-2222');

INSERT INTO college_lecture_history (student_id, name, lecture, professor, professor_number)
VALUES ('6210210', '�ɱ���', 'PYTHON, SQL', '�͵� �� �μ�, ��Ƽ', '010-3333-3333, 010-2222-2222');

SELECT * FROM college_lecture_history;


/*��1����ȭ*/

/*�������� ���̺�*/
DROP TABLE college_lecture_history;

CREATE TABLE college_lecture_history (
	student_id VARCHAR(20)
	, name VARCHAR(20)
	, lecture VARCHAR(100)
	, professor VARCHAR(20)
	, professor_number VARCHAR(40)
) CHARSET=utf8;

INSERT INTO college_lecture_history (student_id, name, lecture, professor, professor_number)
VALUES ('6210062', '������', 'JAVA', '���ӽ� �Ƽ� ����', '010-1111-1111');

INSERT INTO college_lecture_history (student_id, name, lecture, professor, professor_number)
VALUES ('6210062', '������', 'SQL', '��Ƽ', '010-2222-2222');

INSERT INTO college_lecture_history (student_id, name, lecture, professor, professor_number)
VALUES ('6210210', '�ɱ���', 'PYTHON', '�͵� �� �μ�', '010-3333-3333');

INSERT INTO college_lecture_history (student_id, name, lecture, professor, professor_number)
VALUES ('6210210', '�ɱ���', 'SQL', '��Ƽ', '010-2222-2222');

SELECT * FROM college_lecture_history;


/*��2����ȭ*/

/*����Ű(student_id, lecture)�� ����*/
/*name�� student_id�� ����*/
/*professor�� lecture�� ����*/
/*���̺��� �и��Ѵ�(������ ���̺�, ���� ���̺�, �������� ���̺�)*/

/*������ ���̺�*/
CREATE TABLE college_student (
	student_id VARCHAR(20)
	, name VARCHAR(20)
) CHARSET=utf8;

INSERT INTO college_student (student_id, name)
VALUES ('6210062', '������');

INSERT INTO college_student (student_id, name)
VALUES ('6210210', '�ɱ���');

SELECT * FROM college_student;


/*���� ���̺�*/
CREATE TABLE college_lecture (
	lecture VARCHAR(100)
	, professor VARCHAR(20)
	, professor_number VARCHAR(40)
) CHARSET=utf8;

INSERT INTO college_lecture (lecture, professor, professor_number)
VALUES ('JAVA', '���ӽ� �Ƽ� ����', '010-1111-1111');

INSERT INTO college_lecture (lecture, professor, professor_number)
VALUES ('SQL', '��Ƽ', '010-2222-2222');

INSERT INTO college_lecture (lecture, professor, professor_number)
VALUES ('PYTHON', '�͵� �� �μ�', '010-3333-3333');

SELECT * FROM college_lecture;


/*���� ���� ���̺�*/
DROP TABLE college_lecture_history;

CREATE TABLE college_lecture_history (
	student_id VARCHAR(20)
	, lecture VARCHAR(100)
) CHARSET=utf8;


INSERT INTO college_lecture_history (student_id, lecture)
VALUES ('6210062', 'JAVA');

INSERT INTO college_lecture_history (student_id, lecture)
VALUES ('6210062', 'SQL');

INSERT INTO college_lecture_history (student_id, lecture)
VALUES ('6210210', 'PYTHON');

INSERT INTO college_lecture_history (student_id, lecture)
VALUES ('6210210', 'SQL');

SELECT * FROM college_lecture_history;



/*��3����ȭ*/

/*�⺻Ű�� ������ �Ϲ� �÷�(professor �÷�)�� professor_number�� ����*/
/*���̺� �и�*/

/*���� ���̺�*/
CREATE TABLE college_professor (
	professor VARCHAR(20)
	, professor_number VARCHAR(40)
) CHARSET=utf8;

INSERT INTO college_professor (professor, professor_number)
VALUES ('���ӽ� �Ƽ� ����', '010-1111-1111');

INSERT INTO college_professor (professor, professor_number)
VALUES ('��Ƽ', '010-2222-2222');

INSERT INTO college_professor (professor, professor_number)
VALUES ('�͵� �� �μ�', '010-3333-3333');

SELECT * FROM college_professor;


/*���� ���̺�*/
DROP TABLE college_lecture;

CREATE TABLE college_lecture (
	lecture VARCHAR(100)
	, professor VARCHAR(20)
) CHARSET=utf8;

INSERT INTO college_lecture (lecture, professor)
VALUES ('JAVA', '���ӽ� �Ƽ� ����');

INSERT INTO college_lecture (lecture, professor)
VALUES ('SQL', '��Ƽ');

INSERT INTO college_lecture (lecture, professor)
VALUES ('PYTHON', '�͵� �� �μ�');

SELECT * FROM college_lecture;
