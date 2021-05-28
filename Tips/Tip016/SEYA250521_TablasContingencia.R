
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

# Tablas de contingencia ---------------------------------------------------------

library(sjPlot)
library(palmerpenguins)
library(gmodels)    
library(crosstabr) #devtools::install_github("tklebel/crosstabr")
library(dplyr) 

## Tablas de contingencia por defecto
table(penguins$sex,penguins$species)
  
## Tablas de contingencia con "gmodels"
### format "SAS" (default)
CrossTable(penguins$sex,penguins$species)

CrossTable(penguins$sex,penguins$species,prop.chisq = F) #Tabla sin valor de chi² 

### format "SPSS"
CrossTable(penguins$sex,penguins$species,format = "SPSS")
  
CrossTable(penguins$sex,penguins$species,format = "SPSS",prop.chisq = F) #Tabla sin valor de chi² 
  
## Tablas de contingencia con "crosstabr"
  
penguins %>% 
  crosstab(sex ~ species)

penguins %>% 
    crosstab(sex ~ species) %>% 
    layout_column() %>% 
    add_stats()
  
## Tablas de contigencia con  "sjPlot"
tab_xtab(var.row = penguins$sex, var.col = penguins$species, 
                   title = "Tabla de contingencia",
                   show.row.prc = TRUE,show.obs = T,show.col.prc = T,show.cell.prc = T,
                   show.na = T,show.legend = T,
                   statistics = c("auto"))


