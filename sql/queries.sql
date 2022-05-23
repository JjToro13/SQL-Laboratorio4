--Jerson Stick Rios Holguin 1962162--
--Juan Jose Toro 1962047--

--Punto 3---

----A----
--SELECT departamento, titulo 
--FROM instructor 

-----B----
--SELECT nombre, programa
--FROM student as S 
--WHERE S.student_id = '7656';

----C----
--SELECT nombre
--FROM student As S
--WHERE s.student_id = (SELECT student_id FROM enrols WHERE course_id = '837873');

-----D-----Vista---
--CREATE VIEW better_students
--AS SELECt * 
--FROM enrols as B ORDER BY b.calificacion DESC;

--SELECT * From better_students;



    