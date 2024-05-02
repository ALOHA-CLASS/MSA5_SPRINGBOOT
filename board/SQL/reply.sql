-- Active: 1714007442487@@127.0.0.1@3306@joeun
-- 댓글 
-- * 게시글(board)에 종속된 테이블
CREATE TABLE reply (
    no              INT NOT NULL AUTO_INCREMENT PRIMARY KEY,        -- 댓글번호
    board_no        INT NOT NULL,                                   -- 글번호
    parent_no       INT NOT NULL,                                   -- 부모번호
    writer          VARCHAR(100) NOT NULL,                          -- 작성자
    content         TEXT NOT NULL,                                  -- 내용
    reg_date        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,   -- 등록일자
    upd_date        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP   -- 수정일자
);


-- 댓글 샘플 데이터
-- 글번호 : 273
INSERT INTO reply (board_no, parent_no, writer, content)
VALUES ( 273, 0, '김조은', '댓글 내용1')
      ,( 273, 0, '김조은', '댓글 내용2')
      ,( 273, 0, '김조은', '댓글 내용3')
      ,( 273, 0, '김조은', '댓글 내용4')
      ,( 273, 0, '김조은', '댓글 내용5')
;


-- 
SELECT *
FROM reply
WHERE board_no = 273;