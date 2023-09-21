#Manipulacao de imagens - Geracao de Banco de dados com imagens artificais
#Classe: Rachaduras
#Autora: Lais Cardoso de Medeiros
#Data: 16/02/2023
#Orientador: Andre Luiz C. Ottoni - UFRB

#About: Esse arquivo gera imagens artificiais com a combinação de filtros de BRILHO + CONTRASTE + CORRECAO GAMMA.

brightnessContrastGammaCorrectionFilter = function(nImageBrilhoContrasteCorrecaoGamma){
  
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
    im=readImage(photographs[i])
    im2 = resize(im, 500) #6 MB
    plot(im2)
    
    randomValue= runif(1, min=0, max=1000);
    
    #ATENÇÃO: Esse diretório deve estar no mesmo local das fotografias originais
    #Diretório segue esse padrão: C:/Users/lalai/OneDrive/Área de Trabalho/imagem/nomeDaPastaDasTransformacoes/nomeDaPastaDaTransformacaoFlipflop/primeiraPalavraDoNomeDaNovaFotografia
    png(paste("transform/brightnessContrastGammaCorrection/originalBrightnessContrastGammaCorrection",randomValue,photographs[i],im,".png"))
    
    plot(im2)
    dev.off()
    
  }
  
  #Aplica filtro de Correcao Gamma
  #Objetivo -> gerar novas imagens (imagens artificiais)
  for(j in 1:nImageBrightnessContrastGammaCorrection){
    for(i in 1:length(photographs)){
      im=readImage(photographs[i])
      im2 = resize(im, 500) #6 MB
      plot(im2)
      
      #Brilho
      randomValueIfBrilho= runif(1, min=0, max=1000);
      
      if(randomValueIfBrilho > 500){
        #Transformacao brilho: aumenta o brilho
        randomValueBrilho= runif(1, min=0.5, max=0.6);
        im3=im2
        im3@.Data = im2@.Data+randomValueBrilho
        plot(im3)
        
      }else{
        #Transformacao brilho: diminui o brilho
        randomValueBrilho= runif(1, min=0.4, max=0.5);
        im3=im2
        im3@.Data = im2@.Data-randomValueBrilho
        plot(im3)
      }
      
      #Transformacao Contraste
      randomValueConstraste= runif(1, min=0.5, max=0.6);
      im4=im3
      im4@.Data = im3@.Data*randomValueConstraste
      
      randomValue= runif(1, min=0, max=1000);
      
      randomGammaValue = runif(1, min=0.4, max=0.6);
      
      #Transformacao: Correcao Gamma
      im5= im4^randomGammaValue
      plot(im5)
      
      randomValue= runif(1, min=0, max=1000);
      
      #ATENÇÃO: Esse diretório deve estar no mesmo local das fotografias originais
      #Diretório segue esse padrão: C:/Users/lalai/OneDrive/Área de Trabalho/imagem/nomeDaPastaDasTransformacoes/nomeDaPastaDaTransformacaoFlipflop/primeiraPalavraDoNomeDaNovaFotografia
      png(paste("transform/brightnessContrastGammaCorrection/brightnessContrastGammaCorrection",randomValue,photographs[i],im,".png"))
      
      plot(im5)
      dev.off()
      
    }
  }
  return(print("Finalizado!"))
}