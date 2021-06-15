#### Input table for values in time period 1990 to 1999 ####
input_estimates_1990_1999 <- data.frame(variable = c("Precipitation", "Temperature"),
                                        lower = c(2235.904, 22.76),
                                        median = NA,
                                        upper = c(2235.904, 30.73),
                                        distribution = c("const", "posnorm"),
                                        label = c("Average precipitation (mm/year)", "Average temperature (?C)"),
                                        Description = c("10 year average annual precipitation",
                                                        "10 year average anual temperature"))
input_estimates_1990_1999

#### Input table for values in time period 2000 to 2009 ####
input_estimates_2000_2009 <- data.frame(variable = c("Precipitation", "Temperature"),
                                        lower = c(2597.399, 22.94),
                                        median = NA,
                                        upper = c(2597.399, 30.42),
                                        distribution = c("const", "posnorm"),
                                        label = c("Average precipitation (mm/year)", "Average temperature (?C)"),
                                        Description = c("10 year average annual precipitation",
                                                        "10 year average anual temperature"))
input_estimates_2000_2009

#### Input table for values in time period 2010 to 2019 ####
input_estimates_2010_2019 <- data.frame(variable = c("Precipitation", "Temperature"),
                                        lower = c(2698.525, 23.13),
                                        median = NA,
                                        upper = c(2698.525, 31.01),
                                        distribution = c("const", "posnorm"),
                                        label = c("Average precipitation (mm/year)", "Average temperature (?C)"),
                                        Description = c("10 year average annual precipitation",
                                                        "10 year average anual temperature"))
input_estimates_2010_2019

#### Input table for values in time period 2020 to 2029 ####
input_estimates_2020_2029 <- data.frame(variable = c("Precipitation", "Temperature"),
                                        lower = c(0, 0),
                                        median = NA,
                                        upper = c(0, 0),
                                        distribution = c("const", "posnorm"),
                                        label = c("Average precipitation (mm/year)", "Average temperature (?C)"),
                                        Description = c("10 year average annual precipitation",
                                                        "10 year average anual temperature"))
input_estimates_2020_2029