-- 1 CREACIÓN DEL PROCEDIMIENTO ALMACENADO

CREATE PROC SP_INS_Producto(
    @descripcion varchar(50),
    @color varchar(20),
    @precio money
)
AS
BEGIN

    INSERT INTO Producto (descripcion, color, precio) 
    VALUES (@descripcion, @color, @precio)
END
GO

-- 2. EJECUCIÓN DEL PROCEDIMIENTO (Insertar 3 productos)
EXEC SP_INS_Producto 'Camiseta Deportiva', 'Azul Francia', 4500;
EXEC SP_INS_Producto 'Pantalón Corto', 'Negro', 3200;
EXEC SP_INS_Producto 'Zapatillas Urbanas', 'Blanco', 12500;
GO

-- 3 Para ver que los 3 productos se agregaron correctamente
SELECT * FROM Producto;