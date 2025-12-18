CREATE TABLE ventas1 (
  
    idVenta INT PRIMARY KEY IDENTITY(1,1), 
    
    -- Color de la prenda
    color VARCHAR(50), 
    
    -- Valor de la prenda (Formato moneda)
    valor MONEY, 
    
    -- Característica de la prenda
    caracteristica VARCHAR(50)
);

GO