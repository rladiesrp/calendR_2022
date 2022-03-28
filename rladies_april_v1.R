library(calendR)
Sys.setlocale("LC_ALL", "English")

# Vector of NA of the same length of the number of days of the month
events <- rep(NA, 30)

# Set the corresponding events
events[1] <- "1 - [RLadies Cologne] R for Bioinformatics: Analyses and challenges of RNA-seq data"
events[2] <- "2 - [RLadies Salvador] Dando adeus ao Shiny App padrão: themes e shinyWidgets" 
events[3] <- "3 - [RLadies San Diego] Data Science Hackathon"
events[5] <- "5 - [RLadies Guayaquil] Women in Data Science Ecuador 2022
[RLadies Madrid] RLadies + Kairós"
events[6] <- "6 - [RLadies St. Louis] Getting Started with Spatial Data"
events[7] <- "7 - [RLadies Bariloche] Grupo 3. Taller de Estudio Libro R para Ciencia de Datos
[RLadies Freiburg] Our first data dashboard: Interactive plots with Shiny!
[RLadies Vancouver] Introduction to the Tidyverse"
events[12] <- "12 - [RLadies Sydney] KShow and Tell your R Code"
events[16] <- "16 - [RLadies Abuja] Practical View of R in Epidemiology"
events[19] <- "19 - [RLadies Baltimore] Improving your workflow with APIs (Virtual)
[RLadies St. Louis] Introduction to ARIMA models with R"
events[20] <- "20 - [RLadies Philly] April Workshop"
events[21] <- "21 - [RLadies Freiburg] Coming soon!"
events[29] <- "29 - [RLadies Chennai] Classification and Regression Trees"

# Creating the calendar
png(file = "rladies_calendar_apr2022_v1.png", width = 1024, height = 768)
rladies<-calendR(month=4, 
                 weeknames = c("Mon", "Tue", "Wed", "Thu", 
                               "Fri", "Sat","Sun"),   
                 weeknames.size = 6,
                 day.size = 2.75, 
                 days.col = "black",
                 lty = 1,                   
                 special.days = events,
                 special.col = 1:12,
                 legend.pos = "right")

library(ggplot2)
library(png)
library(patchwork)    

rladies+scale_fill_manual(name = "April 2022", values=c(
  "1 - [RLadies Cologne] R for Bioinformatics: Analyses and challenges of RNA-seq data"="magenta3",
  "2 - [RLadies Salvador] Dando adeus ao Shiny App padrão: themes e shinyWidgets"="hotpink", 
  "3 - [RLadies San Diego] Data Science Hackathon"="violetred",
  "5 - [RLadies Guayaquil] Women in Data Science Ecuador 2022
[RLadies Madrid] RLadies + Kairós"="plum",
  "6 - [RLadies St. Louis] Getting Started with Spatial Data"="purple",
  "7 - [RLadies Bariloche] Grupo 3. Taller de Estudio Libro R para Ciencia de Datos
[RLadies Freiburg] Our first data dashboard: Interactive plots with Shiny!
[RLadies Vancouver] Introduction to the Tidyverse"="orchid",
  "12 - [RLadies Sydney] KShow and Tell your R Code"="pink",
  "16 - [RLadies Abuja] Practical View of R in Epidemiology" = "magenta3",
  "19 - [RLadies Baltimore] Improving your workflow with APIs (Virtual)
[RLadies St. Louis] Introduction to ARIMA models with R"="maroon",
  "20 - [RLadies Philly] April Workshop"="hotpink",
  "21 - [RLadies Freiburg] Coming soon!"="lightpink",
  "29 - [RLadies Chennai] Classification and Regression Trees"="orchid"))+
  
  theme(legend.key.size = unit(1, units = "cm"), # Keys size
        legend.text = element_text(size =11),
        legend.title = element_text(size=20)) +
  labs(caption="Source: www.meetup.com/pro/rladies
       Created by @fblpalmeira")

dev.off()

