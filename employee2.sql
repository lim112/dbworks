
-- DML(검색 - SELECT * FROM 테이블 이름)
SELECT * FROM employee;

-- DML(삽입 - INSERT INTO 테이블 이름(칼럼이름) VALUES(값1(문자 입력시 홑 따옴표만 가능), 값2);)
-- 칼럼값을 모든 칼럼에 입력할 경우 테이블명 다음의 칼럼명 생략 가능
INSERT INTO employee(emp_id, name, salary)VALUES('e101', '김사원', 3000000);
INSERT INTO employee(emp_id, name, salary)VALUES('e103', '박사원', 4000000);
INSERT INTO employee(emp_id, name, salary)VALUES('e102', '이사원', 3500000);
INSERT INTO employee(emp_id, name)VALUES('e104', '고신입');

-- DML(삭제 - DELETE FROM 테이블 이름 WHERE 칼럼이름) (테이블은 유지, 데이터만 삭제) (DROP - 테이블 삭제)
DELETE FROM employee WHERE emp_id = 'e103' 

-- 이름이 이사원인 사원의 정보를 검색하세요
SELECT * FROM employee WHERE name = '이사원';

-- 급여가 350만원 이상인 사원의 정보를 검색하시오
SELECT*FROM employee WHERE salary >= 3500000;

-- 급여가 많은 순으로 정렬하시오 (내림차순 : DESC, 오름차순 : ASC)
-- 정렬(SELECT *FROM employee ORDER by 칼럼명 DESC;
SELECT *FROM employee ORDER by salary DESC;
SELECT *FROM employee ORDER by salary ASC;

-- 업데이트 : 사원 이름 변경( 이사원 > 이나라 )
-- DML 언어(수정 - UPDATE 테이블 이름 SET 칼럼명 = '칼럼값' WHERE 칼럼명)
UPDATE employee SET name = '이나라' WHERE name = '이사원'

-- 김사원의 급여를 3200000원으로 변경(김사원 이름이 중복일 수 있으니 기본키로 변경할 것)
UPDATE employee SET salary = '3200000' WHERE emp_id = 'e101'

-- 문자열 검색 - like '%포함된 문자%' 퍼센트  기호를 사용
SELECT * FROM employee WHERE name like '박%';

-- COMMIT - 삽입 수정, 삭제 후 반드시 명시
COMMIT;
-- ROLLBACK - 삽입 수정, 삭제 후 취소시에 사용(단, COMMIT 하기전에 수행)
--(DELETE - 테이블은 유지, 데이터만 삭제) (DROP - 테이블 삭제)(둘 다 ROLLBACK 가능 )
DELETE FROM employee;
ROLLBACK;
