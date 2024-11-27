SELECT 
    m.idMESA,
    p.MARCA,
    pp.QUANTIDADE,
    (pp.QUANTIDADE * p.PRECO_UNITARIO) AS Valor_Total_Item
FROM 
    mesa m
INNER JOIN 
    pedido ped ON m.idPEDIDO = ped.idPEDIDO
INNER JOIN 
    pedido_produto pp ON ped.idPEDIDO = pp.idPEDIDO
INNER JOIN 
    produto p ON pp.idPRODUTO = p.idPRODUTO
WHERE 
    m.idMESA = 2;
