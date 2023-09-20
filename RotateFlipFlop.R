#Manipulacao de imagens - Geracao de Banco de dados com imagens artificais
#Classe: Rachaduras
#Autor: Lais Cardoso de Medeiros
#Data: 16/02/2023
#Orientador: Andre Luiz C. Ottoni - UFRB

#About: Esse arquivo gera imagens artificiais com a combinação de filtros de ROTATE + FLIP + FLOP.

rotateFlipFlopFilter = function(nImageRotateFlipFlop){
  remove(list=ls())
  setwd("C:/Users/lalai/OneDrive/Área de Trabalho/imagem")
  library(EBImage)
  nomes=list.files(pattern = ".jpg")
  
  #for com 1 numero a mais que o desejado
  for(i in 1:length(nomes)){
    im=readImage(nomes[i])
    im2 = resize(im, 500) #6 MB
    plot(im2)
    
    randomValue= runif(1, min=0, max=1000);
    
    png(paste("transform/rotateFlipFlop/originalRotateFlipFlop",randomValue,nomes[i],im,".png"))
    
    plot(im2)
    dev.off()
    
  }
  
  #for com 1 numero a mais que o desejado
  for(j in 1:nImageRotateFlipFlop){
    for(i in 1:length(nomes)){
      im=readImage(nomes[i])
      im2 = resize(im, 500) #6 MB
      plot(im2)
      
      randomValueRotate= runif(1, min=0, max=360);
      im3 = rotate(im2,randomValueRotate);
      
      #Transforma??o: Espelhamento no sentindo vertical
      im4 = flip(im3)
      
      #Transforma??o: Espelhamento no sentindo horizontal e vertical
      im5 = flop(im4)
      
      randomValue= runif(1, min=0, max=1000);
      
      png(paste("transform/rotateFlipFlop/rotateFlipFlopp",randomValue,nomes[i],im,".png"))
      
      plot(im5)
      dev.off()
      
    }
  }
  return(print("Finalizado!"))
}