
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
library(descr)

# Instalación de beautifyR ------------------------------------------------

install.packages("remotes")
remotes::install_github("mwip/beautifyR")

# Datos -------------------------------------------------------------------

# La siguiente base se creó usando la función tribble, permite crear un data
# frame a partir de la creación de una tabla, sin la necesidad de usar algún
# programa externo

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

# Créditos datos: @jeaguilarc_98 Fuentes: Registros administrativos de salud
# (INEC, 2018) Cuentas Nacionales (BCE, 2017).


# Desarrollo --------------------------------------------------

#- Tabla

crosstab(base$prov,base$region)

#- Texto original-----

#El Registro Estadístico de Recursos y Actividades de Salud inicia su investigación desde el año 1970 a partir de este año se recolecta, procesa y publican datos de Recursos y Actividades de Salud, correspondiente a los
#establecimientos de salud con y sin internación hospitalaria del sector público y privado, desde este mismo año y hasta el 2009 se realizaban
#publicaciones físicas, pero desde el año 2000 en adelante se tienen publicaciones digitales (INEC, 2018).
#
#En la actualidad se continúa produciendo información de cada uno de los sectores y clases de establecimientos, desde luego siempre alineados a los
#cambios que se dan en el campo de la salud y, a las necesidades de información, estos cambios han provocado que el formulario de Recursos y
#Actividades de Salud evolucione en el período de recolección de información mencionado, obteniendo mejor calidad y cantidad de información de las fuentes que inte

#- Texto con beautifyR

# El Registro Estadístico de Recursos y Actividades de Salud inicia su
# investigación desde el año 1970 a partir de este año se recolecta, procesa y
# publican datos de Recursos y Actividades de Salud, correspondiente a los
# establecimientos de salud con y sin internación hospitalaria del sector
# público y privado, desde este mismo año y hasta el 2009 se realizaban
# publicaciones físicas, pero desde el año 2000 en adelante se tienen
# publicaciones digitales (INEC, 2018).

# En la actualidad se continúa produciendo información de cada uno de los
# sectores y clases de establecimientos, desde luego siempre alineados a los
# cambios que se dan en el campo de la salud y, a las necesidades de
# información, estos cambios han provocado que el formulario de Recursos y
# Actividades de Salud evolucione en el período de recolección de información
# mencionado, obteniendo mejor calidad y cantidad de información de las
# fuentes que intervienen en el proceso.











