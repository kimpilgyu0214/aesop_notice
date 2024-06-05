use aesop;

show columns FROM AESOP_MEMBER;

drop table AESOP_MEMBER;

CREATE TABLE member(
  email VARCHAR(100) PRIMARY KEY NOT NULL,
  pw VARCHAR(100) NOT NULL,
  name VARCHAR(30) NOT NULL,
  tel VARCHAR(20) default null,
  addr1 VARCHAR(100)default null,
  addr2 VARCHAR(100)default null,
  postcode VARCHAR(100)default null,
  birth date default null,
  point int default null,
  regDate timestamp NOT NULL
);

drop table member;

show columns FROM member;

select * from member;

insert into member values('admin2@aesop.com', '1234', 'admin',sysdate());

INSERT INTO member (email, pw, name, regdate) VALUES ('admin@aesop.com', '1234','admin', sysdate());

ALTER TABLE member MODIFY regdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP;


drop table notice;

CREATE TABLE notice(
    no INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    title VARCHAR(200) NOT NULL, 
    content VARCHAR(1000) NOT NULL, 
    image_url VARCHAR(255),  
    name VARCHAR(100) DEFAULT 'admin' NOT NULL, 
    hit INT DEFAULT 0, 
    regDate TIMESTAMP NOT NULL
);
