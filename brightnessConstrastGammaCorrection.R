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
    originalImage=readImage(photographs[i])
    resizeImage = resize(originalImage, 500) #6 MB
    plot(resizeImage)
    
    randomValue= runif(1, min=0, max=1000);
    
    #ATENÇÃO: Esse diretório deve estar no mesmo local das fotografias originais
    #Diretório segue esse padrão: C:/Users/lalai/OneDrive/Área de Trabalho/imagem/nomeDaPastaDasTransformacoes/nomeDaPastaDaTransformacaoFlipflop/primeiraPalavraDoNomeDaNovaFotografia
    png(paste("transform/brightnessContrastGammaCorrection/originalBrightnessContrastGammaCorrection",randomValue,photographs[i],originalImage,".png"))
    
    plot(resizeImage)
    dev.off()
    
  }
  
  #Aplica filtro de Correcao Gamma
  #Objetivo -> gerar novas imagens (imagens artificiais)
  for(j in 1:nImageBrightnessContrastGammaCorrection){
    for(i in 1:length(photographs)){
      originalImage=readImage(photographs[i])
      resizeImage = resize(originalImage, 500) #6 MB
      plot(resizeImage)
      
      #Brilho
      randomValueIfBrilho= runif(1, min=0, max=1000);
      
      if(randomValueIfBrilho > 500){
        #Transformacao brilho: aumenta o brilho
        randomValueBrilho= runif(1, min=0.5, max=0.6);
        brightnessImage=resizeImage
        brightnessImage@.Data = resizeImage@.Data+randomValueBrilho
        plot(brightnessImage)
        
      }else{
        #Transformacao brilho: diminui o brilho
        randomValueBrilho= runif(1, min=0.4, max=0.5);
        brightnessImage=resizeImage
        brightnessImage@.Data = resizeImage@.Data-randomValueBrilho
        plot(brightnessImage)
      }
      
      #Transformacao Contraste
      randomValueConstraste= runif(1, min=0.5, max=0.6);
      contrastImage=brightnessImage
      contrastImage@.Data = brightnessImage@.Data*randomValueConstraste
      
      randomValue= runif(1, min=0, max=1000);
      
      randomGammaValue = runif(1, min=0.4, max=0.6);
      
      #Transformacao: Correcao Gamma
      gammaCorrectionImage= contrastImage^randomGammaValue
      plot(gammaCorrectionImage)
      
      randomValue= runif(1, min=0, max=1000);
      
      #ATENÇÃO: Esse diretório deve estar no mesmo local das fotografias originais
      #Diretório segue esse padrão: C:/Users/lalai/OneDrive/Área de Trabalho/imagem/nomeDaPastaDasTransformacoes/nomeDaPastaDaTransformacaoFlipflop/primeiraPalavraDoNomeDaNovaFotografia
      png(paste("transform/brightnessContrastGammaCorrection/brightnessContrastGammaCorrection",randomValue,photographs[i],originalImage,".png"))
      
      plot(gammaCorrectionImage)
      dev.off()
      
    }
  }
  return(print("Finalizado!"))
}