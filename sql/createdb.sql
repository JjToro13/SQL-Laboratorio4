--Jerson Stick Rios Holguin 1962162--
--Juan Jose Toro 1962047--

CREATE TABLE IF NOT EXISTS STUDENT(
    student_id VARCHAR(200),
	nombre Varchar(200),
    programa VARCHAR(200),
    PRIMARY KEY (student_id)
);

CREATE TABLE IF NOT EXISTS INSTRUCTOR(
    instructor_id VARCHAR(200),
	  nombre Varchar(200),
    departamento VARCHAR(200),
  	titulo VARCHAR(200),
    PRIMARY KEY (instructor_id)
);

CREATE TABLE IF NOT EXISTS COURSE(
    course_id VARCHAR(200),
	titulo Varchar(200),
    pro_academico VARCHAR(200),
    creditos integer,
  	PRIMARY KEY (course_id)
);

CREATE TABLE IF NOT EXISTS COURSE_OFFERING (
    course_id VARCHAR(200) not NULL,
  	sec_id VARCHAR(200),
    anio VARCHAR(200),
    semestre VARCHAR(200),
  	tiempo TIME,
    salon VARCHAR(50),
   PRIMARY KEY (course_id, sec_id, anio, semestre),
   FOREIGN KEY (course_id) REFERENCES COURSE(course_id)
);

  CREATE TABLE IF NOT EXISTS ENROLS (
    student_id VARCHAR(200) NOT NULL,
    course_id VARCHAR(200) NOT NULL,
  	sec_id VARCHAR(200),
    semestre VARCHAR(200),
    anio VARCHAR(200),
  	calificacion NUMERIC(4,2) DEFAULT 0.0, 
   PRIMARY KEY (student_id, course_id, sec_id, anio, semestre),
   FOREIGN KEY (student_id) REFERENCES STUDENT(student_id),
   FOREIGN KEY (course_id) REFERENCES COURSE(course_id)
);
    
   CREATE TABLE IF NOT EXISTS TEACHES (
    course_id VARCHAR(200),
  	sec_id VARCHAR(200),
    semestre VARCHAR(200),
    anio VARCHAR(200),
    instructor_id VARCHAR(200),
   PRIMARY KEY (course_id, sec_id, anio, semestre, instructor_id),
   FOREIGN KEY (course_id) REFERENCES COURSE(course_id),
   FOREIGN KEY (instructor_id) REFERENCES INSTRUCTOR(instructor_id)
);
     
   CREATE TABLE IF NOT EXISTS REQUIRES (
   main_course VARCHAR(200),
   prerrequisito VARCHAR(200),
   PRIMARY KEY (main_course, prerrequisito),
   FOREIGN KEY (main_course) REFERENCES COURSE(course_id),
   FOREIGN KEY (prerrequisito) REFERENCES COURSE(course_id)
);