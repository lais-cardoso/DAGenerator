#Manipulacao de imagens - Geracao de Banco de dados com imagens artificais
#Classe: Rachaduras
#Autora: Lais Cardoso de Medeiros
#Data: 16/02/2023
#Orientador: Andre Luiz C. Ottoni - UFRB

#About: 
#   Esse arquivo contém o menu para a seleção de filtros e geração do banco de imagens artificiais.
#   Cálculo para geração de Imagens: TOTAL de Imagens = (nImage * fotografias originais) + fotografias originais
#     Ex: 
#      nImage = 3
#      fotografias originais = 1
#      TOTAL de Imagens = (3*1)+1 = 4 imagens

#Note: O código é executado nesse arquivo. Em caso de problemas durante a execução pressione a tecla "Esc".

control_variable = TRUE; 

while (control_variable == TRUE ) {
  cat("===============================\n")
    cat("Selecione a OPÇÃO desejada: \n")
      cat("\n1 - Gerar banco de dados")
      cat("\n2 - Sair")
  cat("\n===============================")
    
    key = readLines(n=1)
    
      switch(key, 
             
             "1"={
               cat("===============================\n")
                 cat("Selecione o FILTRO desejado: \n")
                   cat("\n1 - Rotate")
                   cat("\n2 - Flip/Flop")
                   cat("\n3 - Rotate/Flip/Flop")
                   cat("\n4 - Gamma Correction")
                   cat("\n5 - Brightness/Contrast")
                   cat("\n6 - Brightness/Contrast/Gamma Correction")
                   cat("\n7 - Sair")
               cat("\n===============================")
                 
                 filter = readLines(n=1)
                 
                 switch(filter, 
                        "1"={
                          cat("===============================\n")
                            cat("Selecione a variável 'nImage': \n")
                            nImageRotate = readLines(n=1)
                            rotationFilter(nImageRotate)
                          cat("\n===============================")
                        },
                        
                        "2"={
                          cat("===============================\n")
                            cat("Selecione a variável 'nImage': \n")
                            nImageFlipFlop = readLines(n=1)
                            flipFlopFilter(nImageFlipFlop)
                          cat("\n===============================")
                        },
                        
                        "3"={
                          cat("===============================\n")
                            cat("Selecione a variável 'nImage': \n")
                            nImageRotateFlipFlop = readLines(n=1)
                            rotateFlipFlopFilter(nImageRotateFlipFlop)
                          cat("\n===============================")
                        },
                    
                        "4"={
                          cat("===============================\n")
                            cat("Selecione a variável 'nImage': \n")
                            nImageGammaCorrection = readLines(n=1)
                            gammaCorrectionFilter(nImageGammaCorrection)
                          cat("\n===============================")
                        },
                        
                        "5"={
                          cat("===============================\n")
                            cat("Selecione a variável 'nImage': \n")
                            nImageBrightnessContrast = readLines(n=1)
                            brightnessContrastFilter(nImageBrightnessContrast)
                          cat("\n===============================")
                        },
                        
                        "6"={
                          cat("===============================\n")
                            cat("Selecione a variável 'nImage': \n")
                            nImageBrightnessContrastGammaCorrection = readLines(n=1)
                            brightnessContrastGammaCorrectionFilter(nImageBrightnessContrastGammaCorrection)
                          cat("\n===============================")
                        },
                        "7"={
                          control_variable = FALSE
                        },
                        
                        print("Opção inválida. Você digitou uma opção inexistente!")
                 )
               },
             
             "2"={
               control_variable = FALSE
             },
             
             print("Opção inválida")
      )
}
