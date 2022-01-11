DROP TABLE STUDENT;
DROP TABLE COURSE;
CREATE TABLE COURSE (
  COU_ID       NUMBER(4)      NOT NULL,   -- 과정 번호
  COU_NAME     VARCHAR(20)    NULL,  -- 과정명
  TEA_NAME     VARCHAR(20)    NULL,  -- 강사명
  PRIMARY KEY(COU_ID)   -- 과정 번호를 기본키로 지정
);
CREATE TABLE STUDENT (
  STU_ID       NUMBER(4)        NOT NULL, -- 학생번호, 널 값 허용 안 함
  STU_NAME     VARCHAR(20)      NULL, -- 학생명
  AGE          NUMBER(4)        NULL, -- 나이
  STU_EMAIL    VARCHAR(20)      NULL, -- 이메일
  COU_ID       NUMBER(4)        NULL,-- 소속된 과정의 과정 번호
  SEX          CHAR(1)          DEFAULT 'M',  -- 성별   
  PRIMARY KEY(STU_ID),            -- 학생번호를 기본키로 지정  
  -- -- 과정 번호를 외래키로 지정
  FOREIGN KEY(COU_ID) REFERENCES COURSE(COU_ID)
);
--과정 테이블 데이터 입력
INSERT INTO course VALUES(10,'모바일','성윤정');
INSERT INTO course VALUES(20,'자바','김혜경');
INSERT INTO course VALUES(30,'윈도우','황연주');
INSERT INTO course VALUES(40,'웹표준','전혜영');

--학생 테이블 데이터 입력
INSERT INTO STUDENT VALUES(101,'문종헌', 24,'moon@nate.com',10,'M');
INSERT INTO STUDENT VALUES(102,'오한솔', 22,'five@nate.com',20,'M');
INSERT INTO STUDENT VALUES(103,'제용석', 22,'again@nate.com',20,'M');
INSERT INTO STUDENT VALUES(104,'정국철', 22,'cook@nate.com',20,'M');
INSERT INTO STUDENT VALUES(105,'박홍진', 24,'red@nate.com',10,'M');
INSERT INTO STUDENT VALUES(106,'김현우', 21,'kim@nate.com',20,'M');
INSERT INTO STUDENT VALUES(107,'박시준', 22,'season@nate.com',20,'M');
INSERT INTO STUDENT VALUES(108,'김준형', 27,'brother@nate.com',10,'M');
INSERT INTO STUDENT VALUES(109,'문혜진', 22, NULL,20,'F');
INSERT INTO STUDENT VALUES(110,'박기석', 34,'flag@nate.com',10,'M');
INSERT INTO STUDENT VALUES(111,'윤효선', 24,'od@nate.com',30,'F');
INSERT INTO STUDENT VALUES(112,'안창범', 34,'window@nate.com',30,'M');
INSERT INTO STUDENT VALUES(113,'공지훈', 28, NULL, 10,'M');
INSERT INTO STUDENT VALUES(114,'이봉림', 29,'bbong@nate.com',10,'M');
INSERT INTO STUDENT VALUES(115,'안창범', 24,'chang@nate.com',30,'M');
INSERT INTO STUDENT VALUES(116,'장희성', 34,'shine@nate.com',10,'M');

commit;
