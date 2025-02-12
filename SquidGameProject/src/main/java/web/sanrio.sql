drop database if exists sanrio;
create database sanrio;
use sanrio;

drop table if exists db_char;

create table db_char(
charnum int auto_increment,
charname varchar(30) not null,
charinfo varchar(200),
charbirth varchar(10),
primary key(charnum)
);

insert into db_char (charname,charinfo,charbirth) values
('김병찬','자시감이 과하게 많은편 하지만 멋짐.','02월 01일');

select * from db_char;

drop table if exists db_collabo;

create table db_collabo(
collnum int auto_increment,
collinfo varchar(200),
collweb varchar(1000),
primary key(collnum)
);

insert into db_collabo(collinfo , collweb) values 
('우리집','https://www.naver.com');

select * from db_collabo;

drop table if exists db_charfam;

create table db_charfam(
famnum int auto_increment,
famname varchar(50),
faminfo varchar(200),
charnum int,
primary key(famnum),
foreign key(charnum) references db_char(charnum) on update cascade on delete cascade
);

insert into db_charfam(famname,faminfo,charnum) values 
('찬병','병찬 클론',1);
 
 select * from db_charfam;
 
 drop table if exists db_charfr;
 
 create table db_charfr(
 frnum int auto_increment,
 frname varchar(50),
 frinfo varchar(500),
 charnum int,
 primary key(frnum),
 foreign key(charnum) references db_char(charnum) on update cascade on delete cascade
 );
 
 insert into db_charfr (frname,frinfo,charnum) values
 ('윤동식','병찬이 친구다',1);
 
 select * from db_charfr;
 
 drop table if exists db_qna;
 
 create table db_qna(
 qnanum int auto_increment,
 qnatitle varchar(50),
 qnacontent varchar(300),
 qnaname varchar(30),
 qnaphone varchar(30),
 qnaadress varchar(100),
 qnaemail varchar(50),
 primary key(qnanum)
 );
 
 insert into db_qna(qnatitle,qnacontent,qnaname,qnaphone,qnaadress,qnaemail) values
 ('문의1','문의내용1','김찬','010-7731-9122','인천광역시 어쩌구 저쩌동 몇번길 뭐','qna@gmail.com');
 
 select * from db_qna;
 
 