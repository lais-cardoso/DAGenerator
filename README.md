# IAGenerator 
<p>
     O <b>IA Generator</b> é o algoritmo proposto para geração de imagens artificiais a partir de transformações geométricas e de cor. 

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

- **Trabalho de Conclusão de Curso**: APLICAÇÃO DE APRENDIZADO PROFUNDO NA CLASSIFICAÇÃO DE
IMAGENS DE PATOLOGIAS DA CONSTRUÇÃO CIVIL: ANÁLISE DE DATA
AUGMENTATION PARA BANCOS DE DADOS DESBALANCEADOS.

- **Artigo**: Aplicacão de Aprendizado Profundo na Classificação de Imagens de Patologias da Construção Civil: Análise de  <i> Data Augmentation </i> para Bancos de Dados Desbalanceados.
     - https://drive.google.com/drive/folders/1ZkwuPjSWuE02hcQw7Wa_Yb6BWQ0pkfbj?usp=sharing

# ✔️ Tecnologias utilizadas

 - **Linguagem**: R na versão 4.2.2</li>
 - **IDE**: Rstudio na versão 2022.12.0</li>
 - **Biblioteca**: EBImage na versão 4.42.0</li>

# 📁 Acesso ao projeto

- Acesse o código fonte inicial ou realize o  <i> download </i> através do GitHub.

# 🛠️ Abrir e rodar o projeto

- Realize o  <i> download </i> do RStudio.
- Realize o  <i> download </i> do Projeto.
- Acesse a documentação da biblioteca EBImage: https://bioconductor.org/packages/release/bioc/html/EBImage.html
- Instale a biblioteca EBImage.
- Clique em <i> source </i> em todos os arquivos de transformação de imagens.
- Clique em <i> source </i> no arquivo do menu.
- **Leia** as mensagens do terminal.
- Selecione a transformação através do menu no terminal de comando do Rstudio.
- Selecione a variável conforme a equação abaixo.
- Verifique a geração das imagens artificais.

# :warning: Observações importantes

- Mudar a *barra do caminho de cada diretório* conforme a sintaxe do R indica
     - C:/Users/meuUsuario/home/imagem (forma correta)
     - C:\Users\meuUsuario\home\imagem (forma incorreta)
  
- Verificar se as suas imagens originais estão no formato .jpg ou .png, em caso de .jpg modifique a linha 21 de cada arquivo.
- Definir o diretório da pasta das imagens originais e o diretório de destino das imagens artificiais.
- SEMPRE que salvar novas alterações aperte a tecla “Esc” em seguida </i> source </i> .
- Lembre-se o número de imagens artificais se baseia na equação:
     - Total de imagens = nImage * fotografias originais

# 📦 Materiais utilizados

- https://www.r-project.org/other-docs.html
- https://bioconductor.org/packages/release/bioc/html/EBImage.html
- https://www.youtube.com/watch?v=dKgEDAUUtoo&t=206s
- https://youtube.com/playlist?list=PLvth1ZcREyK6QXKYIpnkmHbbRXSsE53f9&si=48fx9YPsODV_XFFM

# ✒️ Autores

**Pesquisa e Desenvolvimento**: Laís Cardoso de Medeiros
<br />
**Orientação**: André Luiz Carvalho Ottoni
