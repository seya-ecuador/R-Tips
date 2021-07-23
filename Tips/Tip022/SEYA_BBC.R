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


# Paquetes ----------------------------------------------------------------
library(bbplot) #devtools::install_github('bbc/bbplot')
library(gapminder)
library(tidyverse)


# Datos de américa --------------------------------------------------------
america <- gapminder %>% 
  filter(
    continent=="Americas",
    year==2007     
  )

# Gráfico -----------------------------------------------------------------
g1 <- ggplot(
  america,
  aes(x = reorder(country, lifeExp), y = lifeExp)
) +
  geom_bar(stat = "identity", position = "identity", fill = ifelse(america$country == "Ecuador", "#D4AC0D", "#dddddd")) +
  geom_hline(yintercept = 0, size = 1, colour = "#333333") +
  bbc_style() +
  coord_flip() +
  labs(title = "Esperanza de vida en américa 2007") +
  theme(
    panel.grid.major.x = element_line(color = "#cbcbcb"),
    panel.grid.major.y = element_blank()
  )

finalise_plot(
  plot_name = g1,
  source = "Source: Gapminder",
  save_filepath = "tip22.png",
  width_pixels = 640,
  height_pixels = 550
)

