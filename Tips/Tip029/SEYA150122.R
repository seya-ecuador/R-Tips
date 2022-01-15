
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

library(rio)
library(tidyverse)
library(ggplot2)
library(ggrepel)
library(ggdark)

# Fuentes de texto

library(extrafont)

extrafont::font_import() 
fuentes_Imp <- fonts() 

# Datos -------------------------------------------------------------------

base <- tribble(
~prov,	~pob,	~region,	~ics,	~vab_pov,	~pibpc,
'Azuay', 838859, 'Sierra', 0.628875738, 5013920, 5.977071236,
'Bolívar', 205094, 'Sierra', 0.570327911, 634678, 3.09457127,
'Cañar', 267643, 'Sierra', 0.639982205, 1124016, 4.199683907,
'Carchi', 182719, 'Sierra', 0.584858431, 662901, 3.62798067,
'Cotopaxi', 470167, 'Sierra', 0.600851756, 1837791, 3.908804744,
'Chimborazo', 510935, 'Sierra', 0.620939868, 1900010, 3.718692202,
'El Oro', 689760, 'Costa', 0.633689767, 3467436, 5.027018093,
'Esmeraldas', 567610, 'Costa', 0.596063781, 3047275, 5.368606966,
'Guayas', 4207610, 'Costa', 0.62955132, 25815766, 6.135494022,
'Imbabura', 457737, 'Sierra', 0.604556767, 1846117, 4.033139117,
'Loja', 506035, 'Sierra', 0.62308813, 1751490, 3.461203276,
'Los Ríos', 888351, 'Costa', 0.611833579, 3675429, 4.137361246,
'Manabí', 1523950, 'Costa', 0.382349528, 6212365, 4.07648873,
'Morona Santiago', 183728, 'Oriente', 0.669603318, 505543, 2.751583863,
'Napo', 125538, 'Oriente', 0.519052089, 479632, 3.820612086,
'Pastaza', 105494, 'Oriente', 0.585651054, 634614, 6.0156407,
'Pichincha', 3059971, 'Sierra', 0.615324604, 26408871, 8.630431792,
'Tungurahua', 570933, 'Sierra', 0.685602927, 2857483, 5.004935781,
'Zamora Chinchipe', 112835, 'Oriente', 0.686618347, 277482, 2.459183764,
'Galápagos', 30890, 'Insular', 0.670959693, 242691, 7.856620265,
'Sucumbíos', 215499, 'Oriente', 0.549205347, 1508821, 7.001522049,
'Orellana', 155453, 'Oriente', 0.557040997, 3935351, 25.31537507,
'Sto. Domingo', 485090, 'Costa', 0.589191224, 1886213, 3.888377415,
'Santa Elena', 375646, 'Costa', 0.478187493, 1358838, 3.617336535
)

# Créditos datos: @jeaguilarc_98
# Fuentes: Registros administrativos de salud (INEC, 2018) - Cuentas Nacionales (BCE, 2017).


# Desarrollo --------------------------------------------------------------

base$pibpc100 <- base$pibpc*100
base$logpib <- log(base$vab_pov)

#- Gráfico con: "geom_text()"

x11()
ggplot(base, aes(x = logpib, y = ics, size = pob, colour = region)) +
  geom_point(alpha = 0.4) +
  scale_size(range = c(.1, 24), name = "Población") +
  geom_text(
    mapping = aes(x = logpib, y = ics, label = prov, family = "Times New Roman"),
    size = 5 # Tamaño de la etiqueta
  ) +
  labs(
    title = "Índice de Condiciones de Morbilidad\nEcuador 2017",
    caption = "Fuente: INEC | Registros Administrativos de Salud | BCE\n Elaboración: Autores",
    x = "PIB Logarítmico", y = "Índice de Condiciones de Morbilidad"
  ) +
  guides(color = guide_legend(title = "Región")) + # Permite cambiar el nombre de los grupos
  scale_color_manual(
    values = c("#9940C2", "#65BAEB", "#19D123", "#D61C1C"), # Colores por default de ggplot
    labels = c(
      "Costa",
      "Insular",
      "Amazonía",
      "Sierra"
    )
  ) +
  dark_theme_light()

#- Gráfico con: "geom_text_repel()"

x11()
ggplot(base, aes(x = logpib, y = ics, size = pob, colour = region)) +
  geom_point(alpha = 0.4) +
  scale_size(range = c(.1, 24), name = "Población") +
  geom_text_repel(
    mapping = aes(x = logpib, y = ics, label = prov, family = "Times New Roman"),
    size = 5, # Tamaño de la etiqueta
    segment.size = 0.9, # Tamaño de la línea
    segment.alpha = 1.5, # transparencia de la línea
    force = 20,
    arrow = arrow(length = unit(0.010, "npc"), type = "closed", ends = "first"),
  ) +
  labs(
    title = "Índice de Condiciones de Morbilidad\nEcuador 2017",
    caption = "Fuente: INEC | Registros Administrativos de Salud | BCE\n Elaboración: Autores",
    x = "PIB Logarítmico", y = "Índice de Condiciones de Morbilidad"
  ) +
  guides(color = guide_legend(title = "Región")) + # Permite cambiar el nombre de los grupos
  scale_color_manual(
    values = c("#9940C2", "#65BAEB", "#19D123", "#D61C1C"), # Colores por default de ggplot
    labels = c(
      "Costa",
      "Insular",
      "Amazonía",
      "Sierra"
    )
  ) +
  dark_theme_light()
