create table member(
name varchar2(10),
userid varchar2(10),
pwd varchar2(10),
email varchar2(20),
phone char(13),
admin number(1) default 0, -- 0:사용자, 1:관리자
primary key(userid)
);


select * from member;

insert into member values('이소미','somi','1234','gmd@naver.com',
'010-2362-5157', 0);
insert into member values('하상오','sang12','1234','ha12@naver.com',
'010-5629-8888', 0);
insert into member values('김윤승','light','1234','toun1004@naver.com',
'010-9999-828', 0);
insert into member values('한정교','keduit','1234','keduit@naver.com',
'010-1234-5678',1);

commit;

create table item (
name VARCHAR2(20),
price number(8),
description VARCHAR2(100)
);
insert into item values ('냉장고', 900000,'나만의 시원한 이야기를 담다.');
select * from item;
COMMit;