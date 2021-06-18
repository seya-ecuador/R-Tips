
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
  
library(jtools)
library(ggstance)
library(wooldridge)


# Modelo ------------------------------------------------------------------
hourly_wage_model <- lm(lwage ~ educ + exper + tenure, data = wage1)
summ(hourly_wage_model)


# Estimación robusta ------------------------------------------------------
summ(hourly_wage_model, robust = "HC1")


# Estimación por intervalos -----------------------------------------------
summ(hourly_wage_model, confint = TRUE, digits = 3)

#Intervalos de confianza al 95% de confianza
summ(hourly_wage_model, confint = TRUE, ci.width = .5)

#Gráfico de los coeficientes de una regresión
plot_summs(hourly_wage_model, scale = TRUE, plot.distributions = TRUE, inner_ci_level = .90)
  
  