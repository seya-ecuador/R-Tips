
############################################################################
############################################################################
###                                                                      ###
###                  SOLUCIONES ECONÓMICAS Y ANALÍTICAS                  ###
###                              @SEYA_Ecu                               ###
###         ELABORACIÓN: @dhecheverria | @byfcl3 | @jeaguilarc_98        ###
###                            TIPS & TRICKS R                           ###
###                                                                      ###
############################################################################
############################################################################



# Librerías ---------------------------------------------------------------

library(tidyverse)

# Datos -------------------------------------------------------------------
data <- tribble(
  ~year, ~value,
  1999, 10.4,
  2004, 6.7,
  2006, 6.8,
  2012, 6.4,
  2014, 5.1,
  2019, 5.2
)

# Desarrollo --------------------------------------------------

data %>% 
  mutate(value = value / 100,
         year = as.numeric(year)) %>% 
  ggplot( aes(x = year, y = value)) + 
  geom_line(aes(group = 2), alpha = 0.8) +
  geom_point(size = 5, alpha = 0.8) +
  geom_text(aes( label = scales::percent(value, accuracy = 0.1L), 
                 x = year, y = value, vjust = -1 ), size = 4) +
  labs(y = "Prevalencia de desnutrición, altura para la edad\n(% de niños menores de cinco años)",
       x = "Año",
       caption = "Fuente: Banco Mundial (2021)\nElaboración: SEYA") +
  scale_color_manual(values = c("#0E4776","#2372B1")) +
  scale_y_continuous(labels = scales::percent, expand = c(0,0.005)) +
  scale_x_continuous(breaks = c(1999, 2002, 2004, 2006, 2009, 2012, 2014, 2017, 2019)) +
  theme_linedraw() +
  theme(legend.position = "none")











