
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

  # Gráficos ----------------------------------------------------------------
  
library(gapminder)
library(dplyr)
library(ggplot2)
library(plotly)

(p <- ggplot(gapminder,aes(x=continent,y=gdpPercap,fill=continent))+geom_boxplot(alpha=0.5,color="black")+
    labs(title="Gráfico de boxplot (diagrama de caja) del\nPIB per cápita, PPA ($ a precios internacionales actuales)\npor continente de 1952 a 2007 ",
         x="Grupo de países por ingreso", y="PIB per cápita" ))   

(fig <- ggplotly(p))

  
  
