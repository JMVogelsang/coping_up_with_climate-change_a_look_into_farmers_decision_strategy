#### Input table for values in three time periods/decades ####
# Input table for decades: 2000-2009, 2010-2019, 2020-2029.
input_estimates_random_decades <- data.frame(variable = c("Precipitation1", "Wind1", "Temperature1", "Soil_quality1",
                                                         "Pests1", "Weeds1", "Pathogenes1", "Rice_price1", "Labour_cost1",
                                                         "Irrigation_cost1", "Fertilizer_cost1", "Pesticide_cost1", "Machinery_cost1", 
                                                         "Rice_yield_attained1", "Rice_yield_potential1", "var_CV1",
                                                         
                                                         "Precipitation2", "Wind2", "Temperature2", "Soil_quality2",
                                                         "Pests2", "Weeds2", "Pathogenes2", "Rice_price2", "Labour_cost2",
                                                         "Irrigation_cost2", "Fertilizer_cost2", "Pesticide_cost2", "Machinery_cost2", 
                                                         "Rice_yield_attained2", "Rice_yield_potential2", "var_CV2",
                                                         
                                                         "Precipitation3", "Wind3", "Temperature3", "Soil_quality3",
                                                         "Pests3", "Weeds3", "Pathogenes3", "Rice_price3", "Labour_cost3",
                                                         "Irrigation_cost3", "Fertilizer_cost3", "Pesticide_cost3", "Machinery_cost3", 
                                                         "Rice_yield_attained3", "Rice_yield_potential3", "var_CV3"),
                                             
                                            lower = c(0.05,  0.05,  0.05,  0.05,  0.1,   0.05,  0.05,  0.6,  50, 30, 20, 10, 40, 2000, 4000, 20,
                                                      
                                                      0.075, 0.075, 0.075, 0.075, 0.125, 0.075, 0.075, 0.75, 60, 40, 30, 15, 50, 2250, 4500, 25,
                                                      
                                                      0.08,  0.08,  0.08,  0.08,  0.15,  0.08,  0.08,  0.08, 70, 50, 40, 20, 55, 2500, 5000, 30),
                                            median = NA,
                                            upper = c(0.55, 0.75, 0.2,  0.15, 0.2,  0.1,  0.15, 0.8,  70, 40, 30, 20, 80, 4000, 8000,  20,
                                                      
                                                      0.65, 0.8,  0.25, 0.2,  0.25, 0.15, 0.2,  0.95, 80, 50, 40, 25, 85, 4250, 9000,  25,
                                                      
                                                      0.7,  0.85, 0.3,  0.25, 0.3,  0.2,  0.25, 1,    85, 55, 50, 30, 90, 4500, 10000, 30),
                                            
                                            distribution = c("posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm",
                                                             "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "const",
                                                             
                                                             "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm",
                                                             "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "const",
                                                             
                                                             "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm",
                                                             "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "posnorm", "const"),
                                            
                                            label = c("% yield loss", "% yield loss", "% yield loss", "% yield loss", "% yield loss", "% yield loss", 
                                                      "% yield loss", "USD/kg", "USD/ha", "USD/ha", "USD/ha", "USD/ha", "USD/ha", "kg/ha", "kg/ha",
                                                      "Coefficient of variation",
                                                      
                                                      "% yield loss", "% yield loss", "% yield loss", "% yield loss", "% yield loss", "% yield loss", 
                                                      "% yield loss", "USD/kg", "USD/ha", "USD/ha", "USD/ha", "USD/ha", "USD/ha", "kg/ha", "kg/ha",
                                                      "Coefficient of variation",
                                                      
                                                      "% yield loss", "% yield loss", "% yield loss", "% yield loss", "% yield loss", "% yield loss", 
                                                      "% yield loss", "USD/kg", "USD/ha", "USD/ha", "USD/ha", "USD/ha", "USD/ha", "kg/ha", "kg/ha",
                                                      "Coefficient of variation"),
                                            
                                            Description = c("Yield loss due to too much rain (flood) or due to too little rain (drought)", 
                                                            "Yield loss due to heavy wind events (Typhoon)", "Yield loss due to heat stress", 
                                                            "Yield loss due to variation in soil quality", "Yield loss due to pest infestation",
                                                            "Yield loss due to weed infestation", "Yield los due to pathogene infestation", 
                                                            "Rice market price", "Labour market cost", "Price of irrigation",
                                                            "Price of fertilizer", "Price of pesticide", "Price of machinery", "Rice yield attained",
                                                            "Rice yield potential", "Coefficient of variation (measure of relative variability)",
                                                            
                                                            "Yield loss due to too much rain (flood) or due to too little rain (drought)", 
                                                            "Yield loss due to heavy wind events (Typhoon)", "Yield loss due to heat stress", 
                                                            "Yield loss due to variation in soil quality", "Yield loss due to pest infestation",
                                                            "Yield loss due to weed infestation", "Yield los due to pathogene infestation", 
                                                            "Rice market price", "Labour market cost", "Price of irrigation",
                                                            "Price of fertilizer", "Price of pesticide", "Price of machinery", "Rice yield attained",
                                                            "Rice yield potential", "Coefficient of variation (measure of relative variability)",
                                                            
                                                            "Yield loss due to too much rain (flood) or due to too little rain (drought)", 
                                                            "Yield loss due to heavy wind events (Typhoon)", "Yield loss due to heat stress", 
                                                            "Yield loss due to variation in soil quality", "Yield loss due to pest infestation",
                                                            "Yield loss due to weed infestation", "Yield los due to pathogene infestation", 
                                                            "Rice market price", "Labour market cost", "Price of irrigation",
                                                            "Price of fertilizer", "Price of pesticide", "Price of machinery", "Rice yield attained",
                                                            "Rice yield potential", "Coefficient of variation (measure of relative variability)"))
input_estimates_random_decades


####  Model function ####
# model function for the 3 decades.
library(decisionSupport)
rice_function <- function(){
  
  # adding variation in time series to variable rice yield and rice price in each of the 3 decades.
  # var_cV is the coefficinet of variation (%) and I assumed more variation in the future, therefore the coefficinet rises gradually. 
  yields1 <- vv(var_mean = Rice_yield_potential1, 
               var_CV = var_CV1, 
               n = 10)
  prices1 <- vv(var_mean = Rice_price1, 
               var_CV = var_CV1, 
               n = 10)
  
  yields2 <- vv(var_mean = Rice_yield_potential2, 
                var_CV = var_CV2, 
                n = 10)
  prices2 <- vv(var_mean = Rice_price2, 
                var_CV = var_CV2, 
                n = 10)
  
  yields3 <- vv(var_mean = Rice_yield_potential3, 
                var_CV = var_CV3, 
                n = 10)
  prices3 <- vv(var_mean = Rice_price3, 
                var_CV = var_CV3, 
                n = 10)
  
  
  # effect of typhoon and drought on the yield are expressed.
  # cv_if and cv_if_no are coefficinets of variation (%).
  # cv_if = 50 means 50% variation of the value_if for the 10 generated values.
  # value_if = 0 means that in case of the event no yield is assumed (has to be discussed).
  typhoon_adjusted_yield1 <- chance_event(chance = Wind1, 
                                         value_if = 0,
                                         value_if_not = Rice_yield_potential1,
                                         n = 10,
                                         CV_if = 50,
                                         CV_if_not = 5)
  drought_adjusted_yield1 <- chance_event(chance = Precipitation1,
                                         value_if = 0,
                                         value_if_not = Rice_yield_potential1,
                                         n =10,
                                         CV_if = 50,
                                         CV_if_not = 5)
  
  typhoon_adjusted_yield2 <- chance_event(chance = Wind2, 
                                          value_if = 0,
                                          value_if_not = Rice_yield_potential2,
                                          n = 10,
                                          CV_if = 50,
                                          CV_if_not = 5)
  drought_adjusted_yield2 <- chance_event(chance = Precipitation2,
                                          value_if = 0,
                                          value_if_not = Rice_yield_potential2,
                                          n =10,
                                          CV_if = 50,
                                          CV_if_not = 5)
  
  typhoon_adjusted_yield3 <- chance_event(chance = Wind3, 
                                          value_if = 0,
                                          value_if_not = Rice_yield_potential3,
                                          n = 10,
                                          CV_if = 50,
                                          CV_if_not = 5)
  drought_adjusted_yield3 <- chance_event(chance = Precipitation3,
                                          value_if = 0,
                                          value_if_not = Rice_yield_potential3,
                                          n =10,
                                          CV_if = 50,
                                          CV_if_not = 5)
  
  
  # yield losses dependent on % yield loss due to temperature risk, soil quality, pests, weeds and pathogens.
  # overall cost as sum of labour, irrigation, fertilizer, pesticide and machinery cost.
    yield_loss1 <- Temperature1 + Soil_quality1 + Pests1 + Weeds1 + Pathogenes1
  overall_costs1 <- Labour_cost1 + Irrigation_cost1 + Fertilizer_cost1 + Pesticide_cost1 + Machinery_cost1
  
  yield_loss2 <- Temperature2 + Soil_quality2 + Pests2 + Weeds2 + Pathogenes2
  overall_costs2 <- Labour_cost2 + Irrigation_cost2 + Fertilizer_cost2 + Pesticide_cost2 + Machinery_cost2
  
  yield_loss3 <- Temperature3 + Soil_quality3 + Pests3 + Weeds3 + Pathogenes3
  overall_costs3 <- Labour_cost3 + Irrigation_cost3 + Fertilizer_cost3 + Pesticide_cost3 + Machinery_cost3
  
  
  # calculates profit when there is a typhoon and when ther is no typhoon.
  # precipitation is listed seperately from other yield loss factors because it is involved in the risk calculation of drought.
  profit_typhoon1 <- ((typhoon_adjusted_yield1 * ((1 - yield_loss1 - Precipitation1)/1)) * prices1) - overall_costs1
  profit_no_typhoon1 <- ((yields1 * ((1 - yield_loss1 - Precipitation1)/1)) * prices1) - overall_costs1
  
  profit_typhoon2 <- ((typhoon_adjusted_yield2 * ((1 - yield_loss2 - Precipitation2)/1)) * prices2) - overall_costs2
  profit_no_typhoon2 <- ((yields2 * ((1 - yield_loss2 - Precipitation2)/1)) * prices2) - overall_costs2
  
  profit_typhoon3 <- ((typhoon_adjusted_yield3 * ((1 - yield_loss3 - Precipitation3)/1)) * prices3) - overall_costs3
  profit_no_typhoon3 <- ((yields3 * ((1 - yield_loss3 - Precipitation3)/1)) * prices3) - overall_costs3
  
  
  # calculates profit when there is a drought and when ther is no drought.
  # wind is listed seperately from other yield loss factors because it is involved in the risk calculation of typhoon.
  profit_drought1 <- ((drought_adjusted_yield1 * ((1 - yield_loss1 - Wind1)/1)) * prices1) - overall_costs1
  profit_no_drought1 <- ((yields1 * ((1 - yield_loss1 - Wind1)/1)) * prices1) - overall_costs1
  
  profit_drought2 <- ((drought_adjusted_yield2 * ((1 - yield_loss2 - Wind2)/1)) * prices2) - overall_costs2
  profit_no_drought2 <- ((yields2 * ((1 - yield_loss2 - Wind2)/1)) * prices2) - overall_costs2
  
  profit_drought3 <- ((drought_adjusted_yield3 * ((1 - yield_loss3 - Wind3)/1)) * prices3) - overall_costs3
  profit_no_drought3 <- ((yields3 * ((1 - yield_loss3 - Wind3)/1)) * prices3) - overall_costs3
  
  
  # Calculate net present value (NPV) and discount for typhoon/ drought.
  # discount rate has to be discussed (ask in seminar what it means).
  NPV_typhoon1 <- discount(profit_typhoon1, discount_rate = 25, calculate_NPV = TRUE)
  NPV_no_typhoon1 <- discount(profit_no_typhoon1, discount_rate = 5, calculate_NPV = TRUE)
  NPV_drought1 <- discount(profit_drought1, discount_rate = 25, calculate_NPV = TRUE)
  NPV_no_drought1 <- discount(profit_no_drought1, discount_rate = 5, calculate_NPV = TRUE)
  
  NPV_typhoon2 <- discount(profit_typhoon2, discount_rate = 25, calculate_NPV = TRUE)
  NPV_no_typhoon2 <- discount(profit_no_typhoon2, discount_rate = 5, calculate_NPV = TRUE)
  NPV_drought2 <- discount(profit_drought2, discount_rate = 25, calculate_NPV = TRUE)
  NPV_no_drought2 <- discount(profit_no_drought2, discount_rate = 5, calculate_NPV = TRUE)
  
  NPV_typhoon3 <- discount(profit_typhoon3, discount_rate = 25, calculate_NPV = TRUE)
  NPV_no_typhoon3 <- discount(profit_no_typhoon3, discount_rate = 5, calculate_NPV = TRUE)
  NPV_drought3 <- discount(profit_drought3, discount_rate = 25, calculate_NPV = TRUE)
  NPV_no_drought3 <- discount(profit_no_drought3, discount_rate = 5, calculate_NPV = TRUE)
  
  
  # calculate the overall NPV a farmer can expect from his rice plantation in the three investigated decades
  NPV_decade_1 <- NPV_no_typhoon1 + NPV_no_drought1 - NPV_typhoon1 - NPV_drought1
  NPV_decade_2 <- NPV_no_typhoon2 + NPV_no_drought2 - NPV_typhoon2 - NPV_drought2
  NPV_decade_3 <- NPV_no_typhoon3 + NPV_no_drought3 - NPV_typhoon3 - NPV_drought3
  
  return(list(NPV_decade_1 = NPV_decade_1,
              NPV_decade_2 = NPV_decade_2,
              NPV_decade_3 = NPV_decade_3))
}
#### Monte Carlo Simulation ####
# Run the Monte Carlo simulation using the model function and data from input_estimates for 3 decades..
rice_mc_simulation <- mcSimulation(estimate = as.estimate(input_estimates_random_decades),
                                   model_function = rice_function,
                                   numberOfModelRuns = 10000,
                                   functionSyntax = "plainNames")

rice_mc_simulation


##### Visualize model output graphically ####
# graphic output with typhoon/ no typhoon and drought/ no drought
plot_distributions(mcSimulation_object = rice_mc_simulation, 
                   vars = c("NPV_decade_1", "NPV_decade_2", "NPV_decade_3"),
                   method = 'smooth_simple_overlay', 
                   base_size = 12,
                   colors = c("tomato4", "navy", "limegreen"),
                   x_axis_name = "Financial outcome in $ per ha")
