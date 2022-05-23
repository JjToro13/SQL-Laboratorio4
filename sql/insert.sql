--Jerson Stick Rios Holguin 1962162--
--Juan Jose Toro 1962047--   
   
   INSERT INTO student (student_id, nombre, programa)
VALUES
  ('7488','estudiante1','programa1'),
  ('7656','estudiante2','programa2'),
  ('7824','estudiante3','programa3'),
  ('7992','estudiante4','programa4'),
  ('8160','estudiante5','programa5');
  
  INSERT INTO instructor (instructor_id, nombre, departamento)
VALUES
  ('1111','instructor1','departamento1'),
  ('2222','instructor2','departamento2'),
  ('3333','instructor3','departamento3'),
  ('4444','instructor4','departamento4'),
  ('5555','instructor5','departamento5');
  
       INSERT INTO course (course_id, titulo, pro_academico, creditos)
VALUES
  ('837827','curso1','pro_academico1','3'),
  ('837850','curso2','pro_academico2','2'),
  ('837873','curso3','pro_academico3','2'),
  ('837919','curso4','pro_academico4','4'),
  ('837942','curso5','pro_academico5','3');
  
  INSERT INTO course_offering (course_id, sec_id, anio, semestre, tiempo, salon)
VALUES
  ('837827', '1122','2022', 'Febrero-Julio', '2:00 pm', '205'),
  ('837850', '2233','2022', 'Febrero-Julio', '8:00 am', '302'),
  ('837873', '3344','2022', 'Febrero-Julio', '10:00 am','305'),
  ('837919', '4455','2022', 'Febrero-Julio', '4:00 pm', '215'),
  ('837942', '5566','2022', 'Febrero-Julio', '1:30 pm', '202');
  
  INSERT INTO enrols (student_id, course_id, sec_id, semestre, anio, calificacion)
VALUES
  ('7488', '837827','1122','Febrero-Julio', '2022','4.32'),
  ('7488', '837850','2233','Febrero-Julio', '2022','3.22'),
  ('7656', '837827','1122','Febrero-Julio', '2022','3.82'),
  ('7824', '837873','3344','Febrero-Julio', '2022','2.91'),
  ('7992', '837942','5566','Febrero-Julio', '2022','4.64');
  
 INSERT INTO teaches (course_id, sec_id, semestre, anio, instructor_id)
VALUES
  ('837827', '1122', 'Febrero-Julio', '2022', '1111'),
  ('837850', '2233', 'Febrero-Julio', '2022', '2222'),
  ('837873', '3344', 'Febrero-Julio', '2022', '3333'),
  ('837919', '4455', 'Febrero-Julio', '2022', '4444'),
  ('837942', '5566', 'Febrero-Julio', '2022', '5555');

  
  INSERT INTO requires (main_course, prerrequisito)
VALUES
  ('837827', '837873'),
  ('837850', '837873'),
  ('837850', '837919'),
  ('837873', '837919'),
  ('837873', '837942');
  




  
  
 