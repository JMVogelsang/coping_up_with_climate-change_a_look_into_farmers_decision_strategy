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
        Y(Yield)-->I(Income); linkStyle 0 stroke:black, stroke-width:3px
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

mermaid("graph BT
        PRE(Precipitation)-->ABI(Abiotic Factors);     linkStyle 0 stroke:black, stroke-width:3px
        RAD(Radiation)-->ABI;                          linkStyle 1 stroke:black, stroke-width:3px
        WIN(Wind)-->ABI;                               linkStyle 2 stroke:black, stroke-width:3px
        TEM(Temperature)-->ABI;                        linkStyle 3 stroke:black, stroke-width:3px
        SOI(Soil Quality)-->ABI;                       linkStyle 4 stroke:black, stroke-width:3px
        ABI-->FAS(Farmers Success);                    linkStyle 5 stroke:black, stroke-width:4px
        
        PES(Pests)-->BIO(Biotic Factors);              linkStyle 6 stroke:black, stroke-width:3px
        WEE(Weeds)-->BIO;                              linkStyle 7 stroke:black, stroke-width:3px
        PAT(Pathogenes)-->BIO;                         linkStyle 8 stroke:black, stroke-width:3px
        BIO-->FAS;                                     linkStyle 9 stroke:black, stroke-width:4px
        
        RIP(Rice Price)-->SEF(Socio Economic Factors); linkStyle 10 stroke:black, stroke-width:3px
        LAC(Labour Cost)-->SEF;                        linkStyle 11 stroke:black, stroke-width:3px
        LAA(Labour Availability)-->SEF;                linkStyle 12 stroke:black, stroke-width:3px
        IRC(Irrigation Cost)-->SEF;                    linkStyle 13 stroke:black, stroke-width:3px
        FEC(Fertilizer Cost)-->SEF;                    linkStyle 14 stroke:black, stroke-width:3px
        PEC(Pesticide Cost)-->SEF;                     linkStyle 15 stroke:black, stroke-width:3px
        MAC(Machinery Cost)-->SEF;                     linkStyle 16 stroke:black, stroke-width:3px
        RIY(Rice Yield)-->SEF;                         linkStyle 17 stroke:black, stroke-width:3px
        SEF-->FAS;                                     linkStyle 18 stroke:black, stroke-width:4px
        
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
        