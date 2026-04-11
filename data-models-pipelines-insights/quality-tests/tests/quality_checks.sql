-- ==========================================================
-- TESTES DE QUALIDADE DE DADOS (Cenário: Francisco's Electronics)
-- Engenheira de BI: Sage
-- Objetivo: Validar a integridade entre o banco OLTP (Store) 
--           e o Data Warehouse (sales_warehouse)
-- ==========================================================

-- 1. TESTE DE INTEGRIDADE (INTEGRITY)
-- Objetivo: Verificar se os valores financeiros estão corretos.
-- Problema: Pedido ID 7 com valor total incorreto.
SELECT * 
FROM sales_warehouse.Orders 
WHERE id = 7;

-- 2. TESTE DE COMPLETUDE (COMPLETENESS)
-- Objetivo: Validar se a contagem de registros bate entre sistemas.
-- Problema: Warehouse tem 61 registros, enquanto Store tem apenas 60.
SELECT COUNT(*) AS total_locations 
FROM sales_warehouse.Locations;

-- 3. TESTE DE CONSISTÊNCIA (CONSISTENCY)
-- Objetivo: Garantir padrões de dados compatíveis (Ex: prefixos).
-- Problema: Falta do prefixo "+" em vários números de telefone.
SELECT id, FirstName, Phone 
FROM sales_warehouse.Users 
WHERE Phone NOT LIKE '+%';

-- 4. TESTE DE CONFORMIDADE (CONFORMITY)
-- Objetivo: Validar se os dados seguem o formato de destino (Ex: CEP EUA).
-- Problema: Registro ID 6 com CEP inválido (722434213 - excesso de dígitos).
SELECT id, postcode 
FROM sales_warehouse.Locations 
WHERE LENGTH(postcode) NOT IN (5, 10); -- Padrão 12345 ou 12345-6789

-- 5. VALIDAÇÃO DE ESQUEMA - STATUS vs IS_ACTIVE (INTEGRITY)
-- Objetivo: Entender a transformação lógica de campos.
-- Problema: Mapeamento ambíguo entre 'Status' (Store) e 'is_active' (Warehouse).
DESCRIBE sales_warehouse.Users;

-- 6. VALIDAÇÃO DE TIPOS DE DADOS - INVENTÁRIO (CONSISTENCY)
-- Objetivo: Garantir que tipos de dados suportem os valores reais.
-- Problema: Inventory definido como varchar no Store vs int(10) no Warehouse.
DESCRIBE sales_warehouse.Products;

-- 7. VALIDAÇÃO DE PRECISÃO - DATA vs DATETIME (ACCURACY)
-- Objetivo: Confirmar se a granulometria temporal está correta.
-- Problema: Divergência entre 'date' (Warehouse) e 'datetime' (Store).
DESCRIBE sales_warehouse.Sales;

-- 8. VALIDAÇÃO DE REDUNDÂNCIA E RESTRIÇÕES (REDUNDANCY)
-- Objetivo: Evitar duplicidade via chaves exclusivas.
-- Ação: Adicionar restrição UNIQUE nas colunas de relacionamento.
DESCRIBE sales_warehouse.Sales; 
-- (Verificação de índices existentes para garantir que OrderId, ProductId e UserId sejam únicos por registro)
