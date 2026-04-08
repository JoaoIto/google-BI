# Atividade 3: Unificar Dados com Tabelas de Destino

Esta atividade aprofunda o conceito de **Tabelas de Destino** e como elas são essenciais para unificar dados de múltiplas fontes em um ambiente de BI.

---

## 🏗️ O que são Tabelas de Destino?

As tabelas de destino são locais predeterminados para onde os dados do pipeline são enviados após a extração.
- **Tabela de Origem:** De onde os dados vêm (ex: bancos de dados SQL, SaaS, Planilhas).
- **Tabela de Destino:** Para onde os dados vão (ex: BigQuery, Dataflow) para serem transformados ou analisados.

A unificação em uma tabela de destino permite que os profissionais de BI tenham uma "versão única da verdade", facilitando a criação de dashboards e relatórios precisos.

---

## 📤 Processo de Extração de Dados

A extração de dados é a primeira etapa de um pipeline **ETL** (Extrair, Transformar, Carregar). Existem três métodos principais:

1.  **Notificação de Atualização:** O sistema de origem emite um alerta quando um registro muda, iniciando a extração automaticamente.
2.  **Extração Incremental:** O sistema identifica apenas as alterações desde a última carga, sendo mais eficiente para grandes volumes.
3.  **Extração Completa:** Toda a tabela de origem é copiada para o destino.

---

## 🌳 Exemplo Prático: Árvores de São Francisco (CSV)

Nesta pasta, você encontrará o arquivo CSV resultante da consulta realizada no BigQuery sobre as árvores de rua em São Francisco.

### Dados Extraídos:
O arquivo contém as 10 localizações com maior número de árvores. Os top 5 endereços são:
- **100x Cargo Way:** 135 árvores
- **700 Junipero Serra Blvd:** 125 árvores
- **1000 San Jose Ave:** 113 árvores
- **1200 Sunset Blvd:** 110 árvores
- **1600 Sunset Blvd:** 102 árvores

### Por que isso é importante?
Ao mover esses dados de uma fonte pública imensa para sua própria tabela de destino (e exportá-los para CSV), você transformou dados brutos em informação acionável que pode ser lida por outras ferramentas como Python, Looker ou Excel.

---

> [!NOTE]
> Você pode consultar o arquivo CSV local nesta pasta: `SanFranciscoTrees.csv.csv`
