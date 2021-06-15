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

#### Impact pathway determining farmers success ####
library(DiagrammeR)
mermaid("graph BT
        Y(Yield)-->I(Income); linkStyle 0 stroke:blue, stroke-width:2px
        MP(Market price)-->I; linkStyle 1 stroke: blue, stroke-width:2px
        I-->FR(Final result); linkStyle 2 stroke: brown, stroke-width:3px
        CL(Cost labour)-->FR; linkStyle 3 stroke: brown, stroke-width:3px
        CM(Cost management)-->FR;linkStyle 4 stroke: brown, stroke-width:3px
        style Y fill:orange
        style MP fill:orange
        style I fill:green
        style CL fill:green
        style CM fill:green
        style FR fill:red")

mermaid("graph LR
        PRE(Precipitation)-->ABI(Abiotic Factors); 
        RAD(Radiation)-->ABI;                      
        WIN(Wind)-->ABI;                           
        TEM(Temperature)-->ABI;                    
        SOI(Soil Quality)-->ABI;
        ABI-->FAS(Farmers Success);
        
        PES(Pests)-->BIO(Biotic Factors);
        WEE(Weeds)-->BIO;
        PAT(Pathogenes)-->BIO;
        BIO-->FAS;
        
        RIP(Rice Price)-->SEF(Socio Economic Factors);
        LAC(Labour Cost)-->SEF;
        LAA(Labour Availability)-->SEF;
        IRC(Irrigation Cost)-->SEF;
        FEC(Fertilizer Cost)-->SEF;
        PEC(Pesticide Cost)-->SEF;
        MAC(Machinery Cost)-->SEF;
        RIY(Rice Yield)-->SEF;
        SEF-->FAS;
        
        style PRE fill:orange
        style RAD fill:orange
        style WIN fill:orange
        style TEM fill:orange
        style SOI fill:orange
        style ABI fill:blue
        style PES fill:green
        style WEE fill:green
        style PAT fill:green
        style BIO fill:blue
        style RIP fill:yellow
        style LAC fill:yellow
        style LAA fill:yellow
        style IRC fill:yellow
        style FEC fill:yellow
        style PEC fill:yellow
        style MAC fill:yellow
        style RIY fill:yellow
        style SEF fill:blue
        style FAS fill:red")
        
      
        