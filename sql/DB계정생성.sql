-- 계정 삭제 (모든 계정이 관련된 것을 삭제)  -> SYSTEM으로 실행
DROP USER c##study_group_web CASCADE;
-- 계정 생성하면서 할당
CREATE USER c##study_group_web IDENTIFIED BY 1234 DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp PROFILE DEFAULT;
-- 계정 권한 설정
GRANT CONNECT, RESOURCE TO c##study_group_web; 
GRANT CREATE VIEW, CREATE SYNONYM TO c##study_group_web; 
GRANT UNLIMITED TABLESPACE TO c##study_group_web; 
ALTER USER c##study_group_web ACCOUNT UNLOCK;