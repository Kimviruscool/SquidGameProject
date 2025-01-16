drop database if exists squid;
create database squid;
use squid;

drop table if exists user;
drop table if exists game;
drop table if exists pointlog;
drop table if exists survey;

-- 유저테이블
create table user (
uno int auto_increment not null,
uname varchar(20) not null,
ubirth varchar(20) not null,
ugender varchar(1) not null,
uphone varchar(11) not null unique,
uaddress varchar(50) not null,
uaddressinfo varchar(50) not null,
uagree varchar(1) default 'F' not null,
usurvey varchar(1) default 'F' not null,
upoint int default 0 not null,
uid varchar(20) not null unique,
upwd varchar(20) not null,
urank varchar(15) default '참가자' not null,
ugameend varchar(10) default 'F' not null,
primary key (uno)
);

-- 게임 진행테이블
create table game (
uno int not null,
game1 varchar(10) default 'F' not null,
game2 varchar(10) default 'F' not null,
game3 varchar(10) default 'F' not null,
game4 varchar(10) default 'F' not null,
game5 varchar(10) default 'F' not null,
game6 varchar(10) default 'F' not null,
game7 varchar(10) default 'F' not null,
game8 varchar(10) default 'F' not null,
foreign key(uno) references user(uno) on update cascade on delete cascade
);

-- 포인트로그 테이블
create table pointlog(
uno int not null,
pointlog int not null,
pointinfo varchar(20) not null,
foreign key(uno) references user(uno) on update cascade on delete cascade
);

-- 설문조사 로그테이블
create table survey(
uno int not null,
q1 varchar(10) default 0 not null,
q2 varchar(10) default 0 not null,
q3 varchar(10) default 0 not null,
q4 varchar(10) default 0 not null,
q5 varchar(10) default 0 not null,
q6 varchar(10) default 0 not null,
q7 varchar(10) default 0 not null,
q8 varchar(10) default 0 not null,
q9 varchar(10) default 0 not null,
q10 varchar(10) default 0 not null,
foreign key(uno) references user(uno) on update cascade on delete cascade
);

