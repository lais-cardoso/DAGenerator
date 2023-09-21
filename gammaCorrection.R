#Manipulacao de imagens - Geracao de Banco de dados com imagens artificais
#Classe: Rachaduras
#Autora: Lais Cardoso de Medeiros
#Data: 16/02/2023
#Orientador: Andre Luiz C. Ottoni - UFRB

#About: Esse arquivo gera imagens artificiais com o filtro de CORRECAO GAMMA.

gammaCorrectionFilter = function(nImageGammaCorrection){
  
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
    im2 = resize(im, 500)
    plot(im2)
    
    randomValue= runif(1, min=0, max=1000);
    
    #ATENÇÃO: Esse diretório deve estar no mesmo local das fotografias originais
    #Diretório segue esse padrão: C:/Users/lalai/OneDrive/Área de Trabalho/imagem/nomeDaPastaDasTransformacoes/nomeDaPastaDaTransformacaoFlipflop/primeiraPalavraDoNomeDaNovaFotografia
    png(paste("transform/gammaCorrection/originalGammaCorrection",randomValue,photographs[i],im,".png"))
    
    plot(im2)
    dev.off()
    
  }
  
  #Aplica filtro de Correcao Gamma
  #Objetivo -> gerar novas imagens (imagens artificiais)
  for(j in 1:nImageGammaCorrection){
    for(i in 1:length(photographs)){
      im=readImage(photographs[i])
      im2 = resize(im, 500)
      plot(im2)
      
      randomGammaValue = runif(1, min=0.4, max=0.6);
      
      #Transformacao: Correcao Gamma
      im3= im2^randomGammaValue
      plot(im3)
      
      randomValue= runif(1, min=0, max=1000);
      
      #ATENÇÃO: Esse diretório deve estar no mesmo local das fotografias originais
      #Diretório segue esse padrão: C:/Users/lalai/OneDrive/Área de Trabalho/imagem/nomeDaPastaDasTransformacoes/nomeDaPastaDaTransformacaoFlipflop/primeiraPalavraDoNomeDaNovaFotografia
      png(paste("transform/gammaCorrection/gammaCorrection",randomValue,photographs[i],im,".png"))
      
      plot(im3)
      dev.off()
      
    }
  }
  return(print("Finalizado!"))
}