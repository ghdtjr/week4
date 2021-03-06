CREATE TABLE user_info (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(30) NOT NULL UNIQUE,
    password CHAR(64) NOT NULL DEFAULT '',
    name VARCHAR(30) NOT NULL DEFAULT '',
    department VARCHAR(30) NOT NULL DEFAULT ''
) ENGINE = INNODB;

-- 사용자가 업로드하거나 다운받은 리스트
CREATE TABLE user_file (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL DEFAULT '',
    filename VARCHAR(255) NOT NULL DEFAULT '',
    type VARCHAR(100) NOT NULL,
    size int(11) NOT NULL,
    method VARCHAR(30) NOT NULL DEFAULT ''
) ENGINE = INNODB;

-- -- 사용자가 다운받은 리스트
-- CREATE TABLE user_downloadFile(
--     id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     username VARCHAR(30) NOT NULL DEFAULT '',
--     filename VARCHAR(255) NOT NULL DEFAULT '',
--     type VARCHAR(100) NOT NULL,
--     size int(11) NOT NULL
-- ) ENGINE = INNODB;

-- 파일에 대한 댓글
CREATE TABLE file_comments (
    comment_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL DEFAULT '',
    filename VARCHAR(225) NOT NULL DEFAULT '',
    comment VARCHAR(1000) NOT NULL DEFAULT ''
) ENGINE = INNODB;

-- 서버에 저장된 학과 별 과목리스트
-- CREATE TABLE subject_department (
--     department VARCHAR(225) NOT NULL DEFAULT '',
--     subject VARCHAR(225) NOT NULL PRIMARY KEY DEFAULT ''
-- ) ENGINE = INNODB;

-- 과목 상세정보
CREATE TABLE subject_details (
    subject VARCHAR(225) NOT NULL PRIMARY KEY DEFAULT '',
    professor VARCHAR(30) NOT NULL DEFAULT '',
    department VARCHAR(225) NOT NULL DEFAULT ''
) ENGINE = INNODB;

-- -- 과목에 대한 서버의 파일리스트
-- CREATE TABLE subject_files (
--     id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     filename VARCHAR(225) NOT NULL DEFAULT '',
--     subject VARCHAR(225) NOT NULL DEFAULT ''
-- ) ENGINE = INNODB;

-- 파일 상세정보
CREATE TABLE file_details (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    filename VARCHAR(225) NOT NULL DEFAULT '',
    subject VARCHAR(225) NOT NULL DEFAULT '',
    producer VARCHAR(225) NOT NULL DEFAULT '',
    illustration VARCHAR(1000) NOT NULL DEFAULT ''

) ENGINE = INNODB;