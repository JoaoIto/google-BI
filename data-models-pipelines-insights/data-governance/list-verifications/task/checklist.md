# Checklist de Governança: Validação de Esquema de BI

Este checklist foi refinado para diferenciar entre as **melhores práticas** de design e os **bloqueadores técnicos** que impedem a validação de um esquema em sistemas de Business Intelligence.

## 1. Integridade Referencial (Bloqueadores de Validação)
Falhas nestes itens impedem que o esquema seja validado corretamente.

- [ ] **Correspondência de IDs (Referential Integrity)**: Todos os IDs referenciados em tabelas de fatos ou processos existem na tabela de dimensão original?
- [ ] **Compatibilidade de Tipos de Dados**: O tipo de dado da chave primária (PK) é **idêntico** ao tipo de dado da chave estrangeira (FK)? (ex: Inteiro x Inteiro).

> [!CAUTION]
> **Atenção**: Se um ID de produto em `Order Items` não existir na tabela `Product`, ou se um for `STRING` e outro `INT`, a validação do esquema falhará.

---

## 2. Padrões de Nomenclatura (Melhores Práticas)
Falhas nestes itens **não** impedem a validação técnica, mas dificultam a governança e a manutenção.

- [ ] **Uniformidade de Nomes**: Campos relacionados possuem o mesmo nome em tabelas diferentes? (ex: `product_sid` em ambas).
- [ ] **Padronização de Sufixos**: Uso consistente de sufixos (ex: `_sid`, `_id`, `_pk`).
- [ ] **Tradução e Semântica**: Termos estão consistentes (evite misturar idiomas ou sinônimos sem necessidade).

---

## 3. Topologia e Relacionamentos (Lógica de BI)
Relacionamentos fundamentais para a análise de dados.

- [ ] **Tabelas de Processo e Granularidade**: Tabelas como `Shipments` estão conectadas à granularidade de itens (`Order Items`) quando necessário?
- [ ] **Tabelas Órfãs**: Todas as dimensões relevantes (como `Customer`) estão conectadas a pelo menos uma tabela de fatos ou detalhes?
- [ ] **Conexão Multiponto**: Tabelas de dimensões globais (ex: Cliente) estão vinculadas a todas as tabelas de fatos pertinentes para cruzamento de dados?

---

## Resumo Técnico (Aprendizado)
Embora um desenvolvedor de BI prefira que todos os nomes de colunas sejam idênticos, a **validação tecnológica** (como no BigQuery ou outras ferramentas de modelagem) foca na **estratificação dos dados** e no **alinhamento de tipos**. Use este checklist para priorizar o que é funcionalmente obrigatório e o que é estilisticamente desejável.
