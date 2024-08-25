create table board(
num number(5) primary key,
pass varchar2(30),
name varchar2(30),
email varchar2(30),
title varchar2(50),
content varchar2(1000),
readcount number(4) default 0,
writedate date default sysdate
);

create sequence board_seq start with 1 increment by 1;

insert into board values(board_seq.nextval, '1111', '김자바', 'kjv@naver.com', '김자바 게시글', '첫방문 반갑습니다', '0', default);
insert into board values(board_seq.nextval, '2222', '성윤정', 'syj@naver.com', '성윤정 게시글', '첫방문 반갑습니다', '0', default);
insert into board values(board_seq.nextval, '3333', '전수빈', 'jsb@naver.com', '전수빈 게시글', '첫방문 반갑습니다', '0', default);
insert into board values(board_seq.nextval, '4444', '전원지', 'jwj@naver.com', '전원지 게시글', '첫방문 반갑습니다', '0', default);

select * from board;