
CREATE PROC STORE_SELECT_ventas1 (
    @idVentas int = 0
)AS
IF (@idVentas > 0) 
    SELECT * FROM ventas1 WHERE idVentas = @idVentas
ELSE
    SELECT * FROM ventas1 ORDER BY color
GO -- <--- ¡IMPORTANTE! Separa la definición de la ejecución.

EXEC STORE_SELECT_ventas1 
--EJECUTO PARA CORROBORAR SI SE ACTUALIZA LA INFO O NO