#Manipulacao de imagens - Geracao de Banco de dados com imagens artificais
#Classe: Rachaduras
#Autor: Lais Cardoso de Medeiros
#Data: 16/02/2023
#Orientador: Andre Luiz C. Ottoni - UFRB

#About: Esse arquivo gera imagens artificiais com a combinação de filtros de BRILHO + CONTRASTE.

brilhoContrasteFilter = function(nImageBrilhoContraste){
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
    
    png(paste("transform/brilhoContraste/originalBrilhoContraste",randomValue,nomes[i],im,".png"))
    
    plot(im2)
    dev.off()
    
  }
  
  #for com 1 numero a mais que o desejado
  for(j in 1:nImageBrilhoContraste){
    for(i in 1:length(nomes)){
      im=readImage(nomes[i])
      im2 = resize(im, 500) #6 MB
      plot(im2)
      
      #Brilho
      randomValueIfBrilho= runif(1, min=0, max=1000);
      
      if(randomValueIfBrilho > 500){
        #Transforma??o: aumentando o brilho
        randomValueBrilho= runif(1, min=0.5, max=0.6);
        im3=im2
        im3@.Data = im2@.Data+randomValueBrilho
        plot(im3)
        
      }else{
        #Transforma??o: diminuindo o brilho
        randomValueBrilho= runif(1, min=0.4, max=0.5);
        im3=im2
        im3@.Data = im2@.Data-randomValueBrilho
        plot(im3)
      }
      
      #Contraste
      
      randomValueConstraste= runif(1, min=0.5, max=0.6);
      im4=im3
      im4@.Data = im3@.Data*randomValueConstraste
      
      randomValue= runif(1, min=0, max=1000);
      
      png(paste("transform/brilhoContraste/brilhoContraste",randomValue,nomes[i],im,".png"))
      
      plot(im4)
      dev.off()
      
    }
  }
  return(print("Finalizado!"))
}