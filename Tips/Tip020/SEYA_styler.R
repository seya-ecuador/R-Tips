  ############################################################################
  ############################################################################
  ###                                                                      ###
  ###                  SOLUCIONES ECONÓMICAS Y ANALÍTICAS                  ###
  ###                              @SEYA_Ecu                               ###
  ###                 ELABORACIÓN: @dhecheverria | @byfcl3                 ###
  ###                            TIPS & TRICKS R                           ###
  ###                                                                      ###
  ############################################################################
  ############################################################################
  
library(styler) 
# install.packages("styler")
# install.packages("miniUI")

# Ejemplo -----------------------------------------------------------------
##Función
ecm = function(x) {
  #sse=suma del error cuadrático
  sse=sum((x-mean(x))^2) 
  #n
  n=length(x)
  #resultado
  sse/n
}
##Resolución
x=c(1:15)
ecm(x)