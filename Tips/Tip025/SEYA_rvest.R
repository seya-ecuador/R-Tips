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

library(rvest)
library(dplyr)

oro <- read_html("https://es.investing.com/commodities/gold-historical-data")

bdd <- oro %>% 
  html_elements("#curr_table") %>% 
  html_table()

base <- bdd[[1]] 
  
