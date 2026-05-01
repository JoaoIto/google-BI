# Desafio Técnico: Módulo 2 - Visualização e Design de Dados

Este documento registra as respostas e justificativas para o desafio técnico do Módulo 2, focando em princípios de design, acessibilidade e performance no Tableau.

---

### 1. Gestão de Stakeholders e Priorização
**Pergunta:** Um profissional de BI está projetando um painel para um grupo de restaurantes. O gerente de pessoal quer dados sobre funcionários; o gerente da cozinha quer dados de vendas. O que fazer?
*   **Respostas corretas:** 
    *   Determine o que deve ser priorizado e o que deve ser sacrificado para produzir o melhor resultado possível para todos os usuários.
    *   Considere quais são os trade-offs que melhor se alinham às metas comerciais.
*   **Justificativa:** O design de BI exige equilibrar necessidades conflitantes através de *trade-offs* que suportem os objetivos estratégicos da organização.

### 2. Performance: Pré-agregação
**Pergunta:** A pré-agregação envolve ________ enquanto os dados estão no banco de dados.
*   **Resposta:** **fazer cálculos**
*   **Justificativa:** Realizar cálculos no nível do banco de dados (SQL/ETL) antes de enviar para a ferramenta de visualização reduz a carga de processamento do front-end e acelera o painel.

### 3. Conceitos de Dados: Medidas
**Pergunta:** As medidas são tipos de dados _____ que podem ser discretos ou contínuos.
*   **Resposta:** **quantitativo**
*   **Justificativa:** Enquanto dimensões são qualitativas (categorias), medidas são valores numéricos que podem ser agregados.

### 4. Visual Encoding
**Pergunta:** Qual é o processo de tradução de dimensões e medidas em representações visuais dos dados?
*   **Resposta:** **Codificação** (ou *Visual Encoding*)
*   **Justificativa:** É o ato de mapear atributos de dados para atributos visuais (cor, tamanho, posição).

### 5. Acessibilidade
**Pergunta:** Uma visualização usa apenas cores. O que fazer para torná-la mais acessível?
*   **Resposta:** **Incluir etiquetas.**
*   **Justificativa:** Para usuários daltônicos ou com baixa visão, a cor não deve ser o único meio de transmitir informação. Etiquetas de texto ou formas diferentes garantem a compreensão.

### 6. Ênfase e Foco
**Pergunta:** Práticas recomendadas para enfatizar visualizações importantes? (Múltipla escolha)
*   **Respostas corretas:**
    *   Ocultação de elementos para destacar outros.
    *   Priorização e hierarquia (ex: aumentar o tamanho do gráfico principal).
    *   Uso de espaço negativo (espaço em branco ao redor do objeto).

### 7. Otimização de Velocidade
**Pergunta:** Técnicas para melhorar as velocidades de processamento do painel? (Múltipla escolha)
*   **Respostas corretas:**
    *   Organizar usando guias adicionais (dividir o conteúdo em abas).
    *   Pré-agregar os dados.
    *   Incluir menos medidas (trazer apenas o necessário).

### 8. Segurança e Privacidade
**Pergunta:** Um painel com _____ usa uma configuração de privacidade para controlar a disponibilidade de um único item.
*   **Resposta:** **permissão em nível de objeto**
*   **Justificativa:** Permite que elementos específicos do dashboard (como um gráfico sensível) sejam visíveis apenas para determinados perfis, sem restringir a linha inteira de dados.
