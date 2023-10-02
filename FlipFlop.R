#Manipulacao de imagens - Geracao de Banco de dados com imagens artificais
#Classe: Rachaduras
#Autora: Lais Cardoso de Medeiros
#Data: 16/02/2023
#Orientador: Andre Luiz C. Ottoni - UFRB

#About: Esse arquivo gera imagens artificiais com a combinação de filtros de FLIP + FLOP.

flipFlopFilter = function(nImageFlipFlop){

  remove(list=ls())
  
  #Diretório da fotografia original
  setwd("C:/Users/lalai/OneDrive/Área de Trabalho/Iniciação Científica/Códigos/GeracaoDeImagens-Artigo/ExampleDatabaseImages")
  
  #Importação da biblioteca EBImage
  library(EBImage)
  
  #Lista de fotografias originais 
  #ATENÇÃO: A fotografia deve estar no formato indicado, nesse exemplo ".png"
  photographs=list.files(pattern = ".png")
  
  #Aplica filtro de redimensionamento(resize) na lista de fotografias originais
  #Objetivo -> diminuir o processamento do treinamento
  for(i in 1:length(photographs)){
    originalImage=readImage(photographs[i])
    resizeImage=resize(originalImage, 500) 
    plot(resizeImage)
    
    randomValue=runif(1, min=0, max=1000);
    
    #ATENÇÃO: Esse diretório deve estar no mesmo local das fotografias originais
    #Diretório segue esse padrão: C:/Users/lalai/OneDrive/Área de Trabalho/imagem/nomeDaPastaDasTransformacoes/nomeDaPastaDaTransformacaoFlipflop/primeiraPalavraDoNomeDaNovaFotografia
    png(paste("transform/flipFlop/flipFlopOriginal",randomValue,photographs[i],originalImage,".png"))
    
    plot(resizeImage)
    dev.off()
    
  }
  
  #Aplica filtro de flip e flip
  #Objetivo -> gerar novas imagens (imagens artificiais)
  for(j in 1:nImageFlipFlop){
    for(i in 1:length(photographs)){
      
      originalImage=readImage(photographs[i])
      resizeImage=resize(originalImage, 500) 
      plot(resizeImage)
      
      #Transformacao flip: Espelhamento no sentindo vertical
      flipImage=flip(resizeImage)
      
      #Transformacao flop: Espelhamento no sentindo horizontal e vertical
      flopImage=flop(flipImage)
      
      randomValue= runif(1, min=0, max=1000);
      
      #ATENÇÃO: Esse diretório deve estar no mesmo local das fotografias originais
      #Diretório segue esse padrão: C:/Users/lalai/OneDrive/Área de Trabalho/imagem/nomeDaPastaDasTransformacoes/nomeDaPastaDaTransformacaoFlipflop/primeiraPalavraDoNomeDaNovaFotografia
      png(paste("transform/flipFlop/flipFlop",randomValue,photographs[i],originalImage,".png"))
      
      plot(flopImage)
      dev.off()
      
    }
  }
  return(print("Finalizado!"))
}
