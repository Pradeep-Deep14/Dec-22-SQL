CREATE TABLE hackathon_a (
         student_id INT, 
         student_name VARCHAR(100), 
         participation_date DATE
     );
     CREATE TABLE hackathon_b (
         student_id INT, 
         student_name VARCHAR(100), 
         participation_date DATE
     );
     INSERT INTO hackathon_a VALUES 
         (1, 'Anil Sharma', '2023-04-01'), 
         (2, 'Rita Verma', '2023-05-10'), 
         (3, 'Amit Singh', '2023-08-15');
     INSERT INTO hackathon_b VALUES 
         (1, 'Anil Sharma', '2023-06-20'), 
         (2, 'Rita Verma', '2023-07-05'), 
         (3, 'Rahul Roy', '2023-09-25');


SELECT * FROM hackathon_a

SELECT * FROM hackathon_b

/*
List all students who have participated in both Hackathon A and Hackathon B in the past year.
*/

--APPROACH 1
	
SELECT A.STUDENT_NAME
FROM HACKATHON_A A
JOIN HACKATHON_B B
ON A.STUDENT_ID = B.STUDENT_ID
WHERE EXTRACT(YEAR FROM A.PARTICIPATION_DATE) = 2023
AND EXTRACT(YEAR FROM B.PARTICIPATION_DATE) = 2023;

--DYNAMIC APPROACH

SELECT a.student_id, a.student_name 
     FROM hackathon_a a 
     INNER JOIN hackathon_b b 
     ON a.student_id = b.student_id 
     WHERE a.participation_date >= CURRENT_DATE - INTERVAL '1 year' 
     AND b.participation_date >= CURRENT_DATE - INTERVAL '1 year';

