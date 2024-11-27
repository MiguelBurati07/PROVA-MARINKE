SELECT 
    f.NOME,
    m.idMESA,
    SUM(pp.QUANTIDADE * p.PRECO_UNITARIO) AS Valor_Total_Gasto
FROM 
    funcionario f
INNER JOIN 
    funcionario_mesa fm ON f.idFUNCIONARIO = fm.idFUNCIONARIO
INNER JOIN 
    mesa m ON fm.idMESA = m.idMESA
INNER JOIN 
    pedido ped ON m.idPEDIDO = ped.idPEDIDO
INNER JOIN 
    pedido_produto pp ON ped.idPEDIDO = pp.idPEDIDO
INNER JOIN 
    produto p ON pp.idPRODUTO = p.idPRODUTO
GROUP BY 
    f.NOME, m.idMESA;