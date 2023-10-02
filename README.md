# IAGenerator 
<p>
     O "IA Generator" é o algoritmo proposto para geração de imagens artificiais a partir de transformações geométricas e de cor. 

Em resumo, o projeto tem o intuito de realizar o balanceamento de banco de dados através da técnica do Data Augmentation, em português aumento de imagens.     Isto é, construir um grande banco de imagens a partir de uma pequena quantidade de fotografias originais.
</p>

<h1 align="center">
  <img alt="originalImage" title="Imagem original" src="./ExampleDatabaseImages/concreteCrack.png" height="100px" width="100px" />
  <img alt="tranformImage" title="Imagem Artificial" src="./ExampleDatabaseImages/transform/brightnessContrastGammaCorrection/brightnessContrastGammaCorrection 308.422050205991 concreteCrack.png 0.509803921568627 .png" height="100px" width="100px" />
  <img alt="originalImage" title="Imagem Artificial" src="./ExampleDatabaseImages/transform/brightnessContrast/brightnessContrast 447.601744206622 concreteCrack.png 0.509803921568627 .png" height="100px" width="100px" />
  <img alt="originalImage" title="Imagem Artificial" src="./ExampleDatabaseImages/transform/rotate/rotation 327.247439185157 concreteCrack.png 0.509803921568627 .png" height="100px" width="100px" />
  <img alt="originalImage" title="Imagem Artificial" src="./ExampleDatabaseImages/transform/flipFlop/flipFlop 650.86397016421 concreteCrack.png 0.509803921568627 .png" height="100px" width="100px" />
  <img alt="originalImage" title="Imagem Artificial" src="./ExampleDatabaseImages/transform/rotateFlipFlop/rotateFlipFlopp 49.3538624141365 concreteCrack.png 0.509803921568627 .png" height="100px" width="100px" />
  <img alt="originalImage" title="Imagem Artificial" src="./ExampleDatabaseImages/transform/gammaCorrection/gammaCorrection 329.745689406991 concreteCrack.png 0.509803921568627 .png" height="100px" width="100px" />

# ✔️ Tecnologias utilizadas
<ul>
    <li>Linguagem: R na versão 4.2.2</li>
    <li>IDE: Rstudio na versão 2022.12.0</li>
    <li>Biblioteca: EBImage na versão 4.42.0</li>
</ul>

# 📁 Acesso ao projeto

- Acesse o código fonte inicial ou realize o download através do GitHub.

# 🛠️ Abrir e rodar o projeto

- Realize o download do RStudio
- Realize o download do Projeto
- Acesse a documentação da biblioteca EBImage: https://bioconductor.org/packages/release/bioc/html/EBImage.html
- Instale a biblioteca EBImage
- Clique em "source" em todoss os arquivos de transformação de imagens
- Clique em "source" no arquivo do menu
- **Leia** as mensagens do terminal
- Selecione a transformação através do menu no terminal de comando do Rstudio
- Selecione a variável conforme a equação abaixo
- Verifique a geração das imagens artificais

# Observações importantes

- Mudar a *barra dos links* conforme a sintaxe do R indica: 
     C:/Users/meuUsuario/home/imagem (forma correta)
     C:\Users\meuUsuario\home\imagem (forma incorreta)
  
- Verificar se as suas imagens originais estão no formato .jpg ou .png, em caso de .jpg modifique a linha 21 de cada arquivo.
- Definir o diretório da pasta das imagens originais e o diretório de destino das imagens artificiais
= SEMPRE que salvar novas alterações aperte “Esc” em seguida “source”


# Autora

Laís Cardoso de Medeiros
