-- 1. BORRAMOS SI EXISTE PARA EMPEZAR DE CERO
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'SP_INS_Venta')
    DROP PROCEDURE SP_INS_Venta;
GO

-- 2. CREAMOS EL PROCEDIMIENTO (Corregido con 'fecha')
CREATE PROC SP_INS_Venta(
    @idProducto int,
    @cantidad int
)
AS
BEGIN
    INSERT INTO Venta (idProducto, cantidad, fecha)
    VALUES (@idProducto, @cantidad, getdate())
END
GO

-- 3. EJECUTAMOS
EXEC SP_INS_Venta 1, 5;
EXEC SP_INS_Venta 2, 10;
EXEC SP_INS_Venta 3, 2;
EXEC SP_INS_Venta 4, 8;
EXEC SP_INS_Venta 1, 15;
GO

-- 4. VEMOS EL RESULTADO
SELECT * FROM Venta;
