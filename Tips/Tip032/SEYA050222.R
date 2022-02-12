########################################################################
##                               TIP 32                               ##
##                 SOLUCIONES ECONÓMICAS Y ANALÍTICAS                 ##
##                        Pictorial Charts in R                       ##
##  ELABORACIÓN: @SEYA_Ecu | @dhecheverria | @byfcl3 | @jeaguilarc98  ##
##                          TIPS & TRICKS R                           ##
########################################################################

# Fuente: https://echarts4r.john-coene.com/

# Instalación de librerías ------------------------------------------------

install.packages("echarts4r")
remotes::install_github("JohnCoene/echarts4r.assets")

# Cargamos las librerías --------------------------------------------------

library(echarts4r)
library(echarts4r.assets)
library(tidyverse)

# Buscamos las imágenes que serán utilizadas ------------------------------

# Se debe copiar el enlace de la imágen en solitario
messi <- "https://phantom-marca.unidadeditorial.es/be79271cdc9fa1fb5720be9b7a48cbc4/resize/990/f/webp/assets/multimedia/imagenes/2021/11/30/16382274692889.png"
cr7 <-"https://www.realmadrid.com/img/galeria/cr_he28287-2.jpg"
platini <- "https://pbs.twimg.com/media/EAoVoEzXkAAwkot?format=jpg&name=small"
cruyff<- "https://fcb-abj-pre.s3.amazonaws.com/img/jugadors/213_cruyff.jpg"
basten <- "https://2.bp.blogspot.com/-UM_FatRDjg8/WBfka3wuMpI/AAAAAAAAA8I/xqxKm6IqZ64fnJgR7FUSAaeqmOSOCqWFgCLcB/s1600/0c0d142284fec223ef83e40d2d5321f2.jpg"

balondor <- data.frame(
  name = c("Lionel Messi", "Cristiano Ronaldo", "Michelle Platini", "Johan Cruyff", "Marco van Basten"), 
  total = c(7, 5, 3, 3, 3),
  image = c(paste0("image://", messi),   # Links guardados en una sola variable
            paste0("image://", cr7),     
            paste0("image://", platini), 
            paste0("image://", cruyff),  
            paste0("image://", basten))  
)

balondor %>% 
  e_charts(name) %>% # Variable de identificación, eje X
  e_pictorial(total, image) %>% # Variables que incluyen el valor de cada observación y el link de la imágen 
  e_theme("westeros") %>% # Tema predeterminado del paquete
  e_legend(FALSE) %>% # No se muestra la leyenda
  # Alineación del Título
  e_title("Máximos ganadores del Balón de Oro", left='center', padding=5) %>% 
  e_labels(show=TRUE, fontSize = 10) %>% # Modificar el tamaño de los labels en cada barra/imágen
  e_x_axis(splitLine=list(show = FALSE)) %>% # Ajuste del eje X
  e_y_axis(show=FALSE, min=0,max=7, interval=0.5, splitLine=list(show = FALSE)) # Ajuste del eje Y
