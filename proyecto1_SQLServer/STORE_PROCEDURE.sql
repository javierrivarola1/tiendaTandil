SELECT * FROM ventas1

--EXEC SP_INS_ventas1 'Camisa deportiva', 'azul marino', 900

--se carga un dato para corroborar  que funcione correctamente el procedure.

CREATE PROC SP_INS_ventas1(
@descripcion varchar(50),
@color varchar(20),
@precio int
)


AS

--CONTENIDO 

INSERT INTO ventas1 VALUES (@descripcion,@color,@precio)