# Atividade Prática: Dashboards no Tableau (Airbnb Atenas)

Esta atividade demonstra a criação de visualizações profissionais no Tableau Public utilizando dados reais do Airbnb em Atenas, Grécia. O objetivo é transformar dados geográficos e financeiros em insights acionáveis para uma empresa de investimentos imobiliários.

---

## Cenário de Negócio
Uma empresa compra propriedades em Atenas para convertê-las em aluguéis por temporada. Como profissional de BI, fomos encarregados de responder:
1. Qual o preço médio por noite em cada bairro?
2. Onde estão as maiores concentrações de aluguéis disponíveis?

---

## Parte 1: Configuração dos Dados
- **Fonte**: `Athens_Airbnb_Data.csv`
- **Colunas Chave**: `Neighborhood` (Dimensão), `Price` (Medida), `Longitude/Latitude` (Geográfico), `IDS` (Identificador).
- **Ações**: Carregar o arquivo no Tableau Public e verificar tipos de dados (String vs. Numérico).

---

## Parte 2: Preço Médio por Bairro (Gráfico de Barras)

Para responder à primeira pergunta, construímos um gráfico de barras focado na média de preços, tratando distorções estatísticas.

### Passo a Passo:
1. Arrastar `Neighborhood` para **Colunas**.
2. Arrastar `Price` para **Linhas**.
3. Alterar a medida de `SUM(Price)` para `AVG(Price)`.
4. **Tratamento de Outliers**: Identificamos um bairro com preço desproporcional que dificultava a leitura das tendências. Selecionamos a barra e clicamos em **Excluir** (filtro automático).
5. **Ordenação**: Clicamos com o botão direito no cabeçalho e selecionamos **Classificação Descendente** para destacar os bairros mais caros no topo.

![Gráfico de Barras: Preço Médio por Bairro em Atenas](assets/athens_bar_chart.png)

---

## Parte 3: Mapa de Concentração de Aluguéis

Para visualizar a densidade de propriedades, utilizamos as propriedades geoespaciais dos dados.

### Passo a Passo:
1. Arrastar `Longitude` para **Colunas** e `Latitude` para **Linhas**.
2. Configurar ambos como **Dimensão** (para que cada ponto seja tratado individualmente).
3. **Encoding de Tamanho**: Arrastar `IDS` para o quadrado **Tamanho** e alterar a medida para **Contagem (Count)**. Isso faz com que áreas com mais IDs tenham pontos maiores.
4. **Camadas de Fundo**: No menu *Mapa* > *Camadas de Fundo*, alteramos o estilo de "Luz" para **Ruas**, adicionando contexto de rodovias e bairros reais.

![Mapa de Aluguéis: Concentração em Atenas](assets/athens_rental_map.png)

---

## Resolução das Questões Teóricas

### 1. Por que é útil remover temporariamente um outlier?
- **Para tornar o gráfico mais proporcional**: Evita que uma única barra "esmague" as outras em termos de escala.
- **Para ajudar a perceber tendências**: Sem distorções extremas, as variações reais entre a maioria dos dados tornam-se visíveis.
- *Nota: Isso NÃO altera os dados originais, apenas filtra a visualização.*

### 2. Elementos para facilitar a leitura do mapa:
- **Alterar o tamanho de cada ponto**: Utilizar o *encoding* de tamanho para representar volume.
- **Exibir rodovias, estradas e bairros**: O contexto geográfico ajuda o tomador de decisão a reconhecer locais estratégicos da cidade.

---

## Parte 4: Dashboard Interativo (Painel de Controle)

Para permitir que os tomadores de decisão cruzem informações de preço e localização, consolidamos as planilhas em um único Dashboard interativo.

### Passo a Passo:
1. **Novo Painel**: Clicamos no ícone *New Dashboard* no Tableau.
2. **Layout**: Arrastamos a planilha `Preço Médio por Bairro` para a esquerda e o `Rental Map of Athens` para a direita.
3. **Legendas**: O Tableau gera automaticamente uma legenda para o tamanho dos pontos do mapa, essencial para interpretar a concentração de dados.
4. **Interatividade ("Use as Filter")**: 
   - Selecionamos o objeto do Mapa no dashboard.
   - Clicamos no ícone de funil (**Use as Filter**) na barra lateral do objeto.
   - **Resultado**: Agora, ao selecionar uma área ou pontos específicos no mapa, o gráfico de barras é filtrado automaticamente para mostrar apenas os preços médios daqueles locais específicos.

![Dashboard Final: Mapa e Gráfico de Barras Lado a Lado](assets/athens_dashboard_final.png)

---

## Insights e Respostas Técnicas

### 1. Como a legenda melhora a interpretação?
A legenda explica como os dados estão **codificados**. Sem ela, o usuário não saberia se o tamanho de um ponto no mapa representa o preço, a popularidade ou a contagem de IDs (neste caso, a concentração de anúncios).

### 2. Qual o benefício do filtro interativo?
- **Evita a desordem (Clutter)**: Permite focar em subconjuntos de dados sem a necessidade de múltiplos gráficos estáticos.
- **Destaque de Elementos**: Ajuda a identificar rapidamente se bairros com alta concentração de aluguéis também possuem os preços mais elevados.

### 3. Sugestão de Expansão:
Para comparar o preço médio por noite versus o número de aluguéis por bairro em uma única visão, a visualização mais eficaz seria um **Gráfico de Barras Agrupadas**. Isso permitiria visualizar as duas métricas lado a lado para cada bairro, facilitando a correlação.

---

## Conclusão
O dashboard final transforma dados brutos em uma ferramenta de exploração. A conexão entre o mapa e o gráfico de barras permite que a empresa identifique não apenas "onde" investir, mas "quanto" esperar de retorno médio em micro-regiões específicas de Atenas.
