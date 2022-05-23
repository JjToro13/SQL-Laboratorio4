--Jerson Stick Rios Holguin 1962162--
--Juan Jose Toro 1962047--

CREATE TRIGGER nota_invalida_insert AFTER INSERT on enrols for EACH ROW 
BEGIN
	SELECT calificacion FROM enrols As C
	IF (C.calificacion <= '0.0' or c.calificacion > 5.0) then
	raise EXCEPTION ('El valor a guardar es incorrecto o invalido');
	end if;
END;

----II---
CREATE TRIGGER nota_invalida_update AFTER UPDATE on enrols for EACH ROW 
BEGIN
	raise NOTICE CONCAT('La actualizacion fue exitosa ', new.calificacion);
    if : OLD.calificacion = new.calificacion THEN
    RAISE NOTICE ('El valor no ha sido modificado')
    ELSEIF : NEW.calificacion <= '0.0' or new.calificacion > 5.0) THEN
    raise EXCEPTION ('El valor a guardar es incorrecto o invalido');
   	end if;
END;

/*
CREATE PROCEDURE create_teaches(in instructor_id, in course_id)
(
@course_id VARCHAR(200)
@sec_id VARCHAR(200)
@semestre VARCHAR(200)
@anio VARCHAR(200)
@instructor_id VARCHAR(200)
)
as BEGIN 
SELECT course_id FROM course_offering as C
if(c.course_id = course_id)
INSERT into teaches(course_id, sec_id, semestre, anio, instructor_id)
values (@course_id, @sec_id, @semestre, @anio, @instructor_id)
ELSE 
RAISE NOTICE('El curso consultado no esta ofertado actualmente');
END*/