# Visualização de Resultados

A visualização de dados é a arte e a ciência de traduzir números e categorias em representações gráficas que facilitam a descoberta de insights. Como profissional de BI, seu objetivo é criar ferramentas autoexplicativas que capacitem as partes interessadas a responderem suas próprias perguntas.

> [!TIP]
> Para orientar seu processo criativo e garantir a qualidade técnica, consulte o nosso guia de [**Princípios de Design e Acessibilidade**](design_principles.md).

---

## Blocos de Construção: Dimensões e Medidas

Toda visualização eficaz começa com a organização correta dos dados em dois eixos fundamentais:

### 1. Dimensões (Qualitativas)
Dados inerentemente descritivos que servem para categorizar e segmentar as informações.
- **Exemplos**: Nomes de clientes, categorias de produtos, localizações geográficas, observações e entrevistas.
- **Função**: Determinam "o quê" ou "quem" está sendo analisado.

### 2. Medidas (Quantitativas)
Dados numéricos usados para contar, somar e acompanhar mudanças. Elas são subdivididas em dois tipos:
- **Dados Discretos**: Possuem um número limitado de valores (ex: número de alunos em uma sala – não existe "meio aluno").
- **Dados Contínuos**: Podem assumir praticamente qualquer valor numérico dentro de um intervalo (ex: temperatura ou receita financeira – permitem casas decimais e variações infinitas).

---

## Codificação Visual (Encoding)

Codificação é o processo de traduzir dimensões e medidas em elementos visuais. Os principais canais de codificação são:

- **Linha**: Curvas ou retas, grossas ou finas. Ajudam a dar forma e estrutura aos dados.
- **Forma**: Excelente para adicionar contraste de tamanho ou categoria.
- **Cor**: Diferencia elementos e comunica insights rapidamente (ex: calor vs. frio).
- **Espaço**: A área entre e dentro dos objetos. Vital para evitar que a visualização fique confusa.
- **Movimento**: Cria uma sensação de fluxo ou ação (comum em dashboards dinâmicos).

---

## Guia para Escolha do Gráfico

A escolha do gráfico depende da relação que você deseja destacar:
- **Comparação**: Gráficos de barras ou colunas.
- **Tendência**: Gráficos de linha.
- **Proporção**: Gráficos de pizza ou bolhas (quando o contexto de "parte do todo" é claro).
- **Relacionamento**: Diagramas de dispersão.

---

## Trade-offs de Design

Cada escolha visual envolve uma troca. Por exemplo:
- **Codificação Dupla**: Usar cor E rótulos em um gráfico de barras.
    - **Vantagem**: Aumenta a acessibilidade (ajuda daltônicos).
    - **Desvantagem**: Aumenta a carga visual e pode tornar o gráfico mais "poluído".
- **Melhor Prática**: Priorize sempre a **acessibilidade**. Um gráfico um pouco mais carregado é melhor do que um gráfico que uma parcela do público não consegue interpretar.
