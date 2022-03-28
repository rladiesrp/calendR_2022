library(calendR)
Sys.setlocale("LC_ALL", "English")

# Vector of NA of the same length of the number of days of the month
events <- rep(NA, 31)

# Set the corresponding events
events[3] <- "3 - [RLadies Remote] Coffee Chat
[RLadies Gaborone] R for Data Science"
events[5] <- "5 - [RLadies Goiânia] Introdução ao RBio e Experimentos" 
events[8] <- "8 - [RLadies Sydney] Show and Tell your R Code"
events[10] <- "10 - [RLadies Bariloche] Grupo 3. Taller de Estudio Libro R para Ciencia de Datos
[RLadies New Orleans] Pick Your Package: Data Visualization in R
[RLadies Twin Cities] Box package
[RLadies Freiburg] Plotting spatial data in R: Put RLadies Freiburg on the map!"
events[12] <- "12 - [RLadies Gaborone & Saudi Arabia] Using R as an Epidemiologist: Assessment of real-world data"
events[15] <- "15 - [RLadies St. Louis] Creating Dynamic Reports from your Shiny App"
events[16] <- "16 - [RLadies Coventry] Keeping track of your R code: Version control with Git, GitHub and RStudio
[RLadies Brisbane] Using shiny to teach real world concepts like virus spread"
events[17] <- "17 - [RLadies Montreal] RLadies Meeting: TBC"
events[19] <- "19 - [RLadies Abuja] Data Manipulation with data.table in R 
[RLadies New York] RLadies Book Club"
events[23] <- "23 - [RLadies Medellin] R para la ciencia de datos
[RLadies Tunis] - Creating Your Own R Package"
events[24] <- "24 - [RLadies Baltimore] How to use R with Excel (Virtual)
[RLadies Freiburg] Text analysis with R: Topic modeling
[RLadies Sydney] Structural equation models in educational research using R"
events[25] <- "25 - [RLadies Gaborone] An Introduction to R Shiny
[RLadies Chennai] - Classification and Regression Trees"
events[26] <- "26 - [RLadies Puebla] SagemakeR: Machine Learning en R
[RLadies Guadalajara] - Modelos de series de tiempo aplicados a indicadores de género
[RLadies Lagos] - Data Network Analysis : What to know"
events[30] <- "30 - [RLadies Washington D.C.] Data Science Program Open House with Georgetown University
[RLadies Philly] 2022 Datathon Conclusion"
events[31] <- "31 - [RLadies Bari] The typical working day of a BI manager"

# Creating the calendar
png(file = "rladies_calendar_mar2022_v2.png", width = 1024, height = 768)
rladies<-calendR(month=3, 
                 weeknames = c("Mon", "Tue", "Wed", "Thu", 
                               "Fri", "Sat","Sun"),   
                 weeknames.size = 6,
                 day.size = 2.75, 
                 days.col = "black",
                 lty = 1,                   
                 special.days = events,
                 special.col = 1:15,
                 legend.pos = "right")

library(ggplot2)
library(png)
library(patchwork)    

rladies+scale_fill_manual(name = "March 2022", values=c(
"3 - [RLadies Remote] Coffee Chat
[RLadies Gaborone] R for Data Science"="magenta3",
"5 - [RLadies Goiânia] Introdução ao RBio e Experimentos"="hotpink", 
"8 - [RLadies Sydney] Show and Tell your R Code"="purple",
"10 - [RLadies Bariloche] Grupo 3. Taller de Estudio Libro R para Ciencia de Datos
[RLadies New Orleans] Pick Your Package: Data Visualization in R
[RLadies Twin Cities] Box package
[RLadies Freiburg] Plotting spatial data in R: Put RLadies Freiburg on the map!"="plum",
"12 - [RLadies Gaborone & Saudi Arabia] Using R as an Epidemiologist: Assessment of real-world data"="purple",
"15 - [RLadies St. Louis] Creating Dynamic Reports from your Shiny App"="plum3",
"16 - [RLadies Coventry] Keeping track of your R code: Version control with Git, GitHub and RStudio
[RLadies Brisbane] Using shiny to teach real world concepts like virus spread"="pink",
"17 - [RLadies Montreal] RLadies Meeting: TBC" = "magenta3",
"19 - [RLadies Abuja] Data Manipulation with data.table in R 
[RLadies New York] RLadies Book Club"="maroon",
"23 - [RLadies Medellin] R para la ciencia de datos
[RLadies Tunis] - Creating Your Own R Package"="hotpink",
"24 - [RLadies Baltimore] How to use R with Excel (Virtual)
[RLadies Freiburg] Text analysis with R: Topic modeling
[RLadies Sydney] Structural equation models in educational research using R"="lightpink",
"25 - [RLadies Gaborone] An Introduction to R Shiny
[RLadies Chennai] - Classification and Regression Trees"="orchid",
"26 - [RLadies Puebla] SagemakeR: Machine Learning en R
[RLadies Guadalajara] - Modelos de series de tiempo aplicados a indicadores de género
[RLadies Lagos] - Data Network Analysis : What to know"="purple",
"30 - [RLadies Washington D.C.] Data Science Program Open House with Georgetown University
[RLadies Philly] 2022 Datathon Conclusion"="violetred",
"31 - [RLadies Bari] The typical working day of a BI manager"="plum3"))+
  
  theme(legend.key.size = unit(1, units = "cm"), # Keys size
        legend.text = element_text(size =14),
        legend.title = element_text(size=20)) +
  labs(caption="Source: www.meetup.com/pro/rladies
       Created by @fblpalmeira")

dev.off()

