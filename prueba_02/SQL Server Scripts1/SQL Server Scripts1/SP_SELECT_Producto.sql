-- 1. CREACIÓN DEL PROCEDIMIENTO DE CONSULTA
-- Si le pasas un ID, busca ese producto. Si le pasas 0, trae todo.
CREATE PROC SP_SEL_Productos(
    @idProducto int = 0
)
AS
BEGIN
    IF @idProducto > 0
        -- Busca un producto específico por su ID
        SELECT * FROM Producto WHERE idProducto = @idProducto
    ELSE
        -- Si el ID es 0 o menor, trae todos ordenados por nombre
        SELECT * FROM Producto ORDER BY descripcion
END
GO

-- 2. EJEMPLOS DE USO (Para probarlo)

-- Opción A: Ver todos los productos (como el parámetro es = 0 por defecto, trae todo)
EXEC SP_SEL_Productos 0;

