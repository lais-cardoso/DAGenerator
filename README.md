# DAGenerator 
<p>
     O <b><i>DA Generator</i></b> é o algoritmo proposto para geração de imagens artificiais a partir de transformações geométricas e de cor. 

Em resumo, o projeto tem o intuito de realizar o balanceamento de banco de dados através da técnica do  <i>Data Augmentation</i>, em português aumento de imagens.     Isto é, construir um grande banco de imagens a partir de uma pequena quantidade de fotografias originais.
</p>

<h1 align="center">
  <img alt="originalImage" title="Imagem original" src="./ExampleDatabaseImages/concreteCrack.png" height="100px" width="100px" />
  <img alt="tranformImage" title="Imagem Artificial" src="./ExampleDatabaseImages/transform/brightnessContrastGammaCorrection/brightnessContrastGammaCorrection 308.422050205991 concreteCrack.png 0.509803921568627 .png" height="100px" width="100px" />
  <img alt="originalImage" title="Imagem Artificial" src="./ExampleDatabaseImages/transform/brightnessContrast/brightnessContrast 447.601744206622 concreteCrack.png 0.509803921568627 .png" height="100px" width="100px" />
  <img alt="originalImage" title="Imagem Artificial" src="./ExampleDatabaseImages/transform/rotate/rotation 327.247439185157 concreteCrack.png 0.509803921568627 .png" height="100px" width="100px" />
  <img alt="originalImage" title="Imagem Artificial" src="./ExampleDatabaseImages/transform/flipFlop/flipFlop 650.86397016421 concreteCrack.png 0.509803921568627 .png" height="100px" width="100px" />
  <img alt="originalImage" title="Imagem Artificial" src="./ExampleDatabaseImages/transform/rotateFlipFlop/rotateFlipFlopp 49.3538624141365 concreteCrack.png 0.509803921568627 .png" height="100px" width="100px" />
  <img alt="originalImage" title="Imagem Artificial" src="./ExampleDatabaseImages/transform/gammaCorrection/gammaCorrection 329.745689406991 concreteCrack.png 0.509803921568627 .png" height="100px" width="100px" />

# 📄 Pesquisa

O link abaixo contém o Trabalho de Conclusão de Curso e o Artigo com metodologia composta pelo Algoritmo IAGenerator.

- **Trabalho de Conclusão de Curso**: Aplicação de Aprendizado Profundo na Classificação de imagens de patologias da construção civil: Análise de  <i> Data Augmentation </i> para Bancos de Dados Desbalanceados.
     - Bacharelado em Ciências Exatas e Tecnológicas, Universidade Federal do Recôncavo da Bahia, Junho de 2023.

- **Artigo**: Aplicacão de Aprendizado Profundo na Classificação de Imagens de Patologias da Construção Civil: Análise de <i> Data Augmentation </i> para Bancos de Dados Desbalanceados.
     - Será publicado e apresentado no Congresso Brasileiro de Inteligência Computacional 2023.
      
Para acessar esse material: https://drive.google.com/drive/folders/1ZkwuPjSWuE02hcQw7Wa_Yb6BWQ0pkfbj?usp=sharing

# ✔️ Tecnologias utilizadas

 - **Linguagem**: R na versão 4.2.2</li>
 - **IDE**: Rstudio na versão 2022.12.0</li>
 - **Biblioteca**: EBImage na versão 4.42.0</li>

# 📁 Acesso ao projeto

- Acesse o código fonte inicial ou realize o  <i> download </i> através do GitHub.

# 🛠️ Abrir e rodar o projeto

- Realize o  <i> download </i> do R.
     - Link para  <i> download </i> da versão 4.2.2: https://cran.r-project.org/bin/windows/base/old/4.2.2/ 
- Realize o  <i> download </i> do RStudio.
     - Link para  <i> download </i> da versão 2022.12.0: [https://cran.r-project.org/bin/windows/base/old/4.2.2/](https://dailies.rstudio.com/version/2022.12.0+353/)
- Realize o  <i> download </i> do Projeto.
- Acesse a documentação da biblioteca EBImage: https://bioconductor.org/packages/release/bioc/html/EBImage.html
- Instale a biblioteca EBImage.
- Clique em <i> source </i> para executar os arquivos de transformação de imagens.
- Clique em <i> source </i> para executar o menu.
- **Leia** as mensagens do terminal.
- Selecione a transformação através do menu no terminal de comando do Rstudio.
- Selecione a variável conforme a equação abaixo.
- Verifique a geração do Banco Artificial de Imagens.

# :warning: Observações importantes

- Mudar a *barra do caminho de cada diretório* conforme a sintaxe do R indica
     - C:/Users/meuUsuario/home/imagem (forma correta)
     - C:\Users\meuUsuario\home\imagem (forma incorreta)
  
- Verificar se as suas imagens originais estão no formato .jpg ou .png, em caso de .jpg modifique a linha 21 de cada arquivo.
- Definir o diretório da pasta das imagens originais e o diretório de destino das imagens artificiais.
- SEMPRE que salvar novas alterações aperte a tecla “Esc” em seguida </i> source </i> .
- Lembre-se o número de imagens no Banco Artificial de Imagens se baseia na equação:
     - Total de imagens = nImage * fotografias originais

 # :hammer: Funcionalidades do projeto

- Aplicar filtros geométricos ou de cor em imagens originais.
- Gerar o Banco de Artificial de Imagens.

# :pushpin: Materiais utilizados

- https://www.r-project.org/other-docs.html
- https://bioconductor.org/packages/release/bioc/html/EBImage.html
- https://www.youtube.com/watch?v=dKgEDAUUtoo&t=206s
- https://youtube.com/playlist?list=PLvth1ZcREyK6QXKYIpnkmHbbRXSsE53f9&si=48fx9YPsODV_XFFM

# 📦 Base de Dados 

- Dataset utilizado para testes:
     - Concrete Crack Images for Classification: https://data.mendeley.com/datasets/5y9wdsg2zt/2
          - Autor: Çağlar Fırat Özgenel
          - Classes: Parede e Rachadura
          - Artigo: https://doi.org/10.22260/ISARC2018/0094
     - Crack dataset : https://drive.google.com/drive/folders/1cplcUBmgHfD82YQTWnn1dssK2Z_xRpjx
          - Autor: Yang
          - Classe: Rachadura
          - Artigo: https://doi.org/10.1111/mice.12412
     - Crack detection for masonry surfaces: https://github.com/dimitrisdais/crack_detection_CNN_masonry
          - Autor: Dimitris Dais, İhsan Engin Bal, Eleni Smyrou, Vasilis Sarhosis.
          - Classe: Rachadura
          - Artigo: https://doi.org/10.1016/j.autcon.2021.103606

- Dataset EXTRA:
     - Concrete Crack Conglomerate Dataset: https://data.lib.vt.edu/articles/dataset/Concrete_Crack_Conglomerate_Dataset/16625056?file=30930337
          - Autores: Eric Bianchi, Matthew Hebdon
          - Classe: Rachadura
          - Artigo: https://doi.org/10.7294/16628596.v1

# ✒️ Autores

| [<img loading="lazy" src="[https://avatars.githubusercontent.com/u/37356058?v=4](https://avatars.githubusercontent.com/u/68950987?v=4)" width=115><br><sub>Laís Cardoso de Medeiros</sub>](https://github.com/camilafernanda) |  [<img loading="lazy" src="[https://avatars.githubusercontent.com/u/30351153?v=4](https://lh5.googleusercontent.com/ppdia_igBWkUx_0rlnRAI9pOZ7OJsNe1yuzSqHtMw1HxBp9Ci2obN6KPq09OGjQjZ0OqHERLyk_7eOP8fkK7hAg=w1280)" width=115><br><sub>Guilherme Lima</sub>](https://github.com/guilhermeonrails) |  [<img loading="lazy" src="https://avatars.githubusercontent.com/u/8989346?v=4" width=115><br><sub>Alex Felipe</sub>](https://github.com/alexfelipe) |
| :---: | :---: | :---: |

**Pesquisa e Desenvolvimento**: Laís Cardoso de Medeiros
<br />
**Orientação**: André Luiz Carvalho Ottoni

# :moneybag: Financiamento

<p>O algoritmo DAGenerator é um produto do <b>Projeto de Iniciação Científica</b> "Aplicação de aprendizado profundo na classificação de patologias
em imagens da construção civil" com bolsa financiada pela Fundação de Amparo à Pesquisa do Estado da Bahia (FAPESB) - Pedido Nº
4153/2022.</p>
