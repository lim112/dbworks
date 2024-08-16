COMMIT;

-- 생성, 수정, 조회, 삭제 후에 실시

-- 생성, 수정, 조회, 삭제 후 COMMIT 전에 실시
ROLLBACK;

UPDATE car SET year = 2020 WHERE model_name = '아반떼';
-- car 테이블 생성, 자동 순번 - AUTOINCREMENT
CREATE TABLE car(
	car_no INTEGER PRIMARY KEY AUTOINCREMENT,
	model_name TEXT NOT NULL, 
	year INTEGER
	);
	
-- 자동 순번인 경우에 칼럼명과 값을 넣지 않음---
INSERT INTO car (model_name, year) VALUES('아반떼', 2016);
INSERT INTO car (model_name, year) VALUES('아이오닉5', 2021)

-- 아이오닉5인것을 삭제
DELETE FROM car WHERE model_name = '아이오닉5'

-- 저장된 정보 불러오기
SELECT * FROM car;

