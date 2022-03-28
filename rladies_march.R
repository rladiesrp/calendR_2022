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
events[24] <- "24 - [RLadies Baltimore] How to use R with Excel (Virtual)
[RLadies Freiburg] Coming soon!
[RLadies Sydney] Structural equation models in educational research using R"
events[25] <- "25 - [RLadies Gaborone] An Introduction to R Shiny"
events[30] <- "30 - [RLadies Philly] 2022 Datathon Conclusion"

# Creating the calendar
png(file = "rladies_calendar_mar2022_v1.png", width = 1024, height = 768)
rladies<-calendR(month=3, 
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
my_image <- readPNG("rladiesglobal_logo.png", native = TRUE)
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
"24 - [RLadies Baltimore] How to use R with Excel (Virtual)
[RLadies Freiburg] Coming soon!
[RLadies Sydney] Structural equation models in educational research using R"="lightpink",
"25 - [RLadies Gaborone] An Introduction to R Shiny"="orchid",
"30 - [RLadies Philly] 2022 Datathon Conclusion"="violetred"))+
  
  theme(legend.key.size = unit(1, units = "cm"), # Keys size
        legend.text = element_text(size =11),
        legend.title = element_text(size=20)) +
  labs(caption="Source: www.meetup.com/pro/rladies
       Created by @fblpalmeira") +
  # Combine plot & image
  inset_element(p = my_image,
                #left = 0.85,
                #bottom = 0.85,
                #right = 0.975,
                #top = 0.975,
                #align_to = "full")# Text size

dev.off()
