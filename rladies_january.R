library(calendR)
Sys.setlocale("LC_ALL", "English")

# Vector of NA of the same length of the number of days of the year
events <- rep(NA, 31)

# Set the corresponding events
events[6] <- "6 - [RLadies Urmia] My Data Science Learning Journey"
events[8] <- "8 - [RLadies Natal] Regressão Linear"
events[11] <- "11 - [RLadies Boulder] RLadies #22: Frequentist & Bayesian Random Effects Models in R: RStan Tutorial"
events[12] <- "12 - [RLadies New York] Package Development Workshop (Day 1) - Your First Package"
events[13] <- "13 - [RLadies New York] Package Development Workshop (Day 2) - Package Documentation and 
[RLadies Cuernavaca] Introducción a R y RStudio and 
[RLadies Twin Cities] R for Complete Newbies" 
events[17] <- "17 - [RLadies Remote] R Package Development Workshop Series"
events[18] <- "18 - [RLadies Santiago] Club de lectura del libro Data Feminism and
[RLadies Irvine] R Goals for 2022! and
[RLadies Philly] Resolutions 2022!"
events[19] <- "19 - [RLadies Seattle] Reactor x PNW Tech Community Networking"
events[20] <- "20 - [RLadies Vancouver] Git/Github workshop and 
[RLadies Montreal] RLadies Meeting: TBC"
events[22] <- "22 - [RLadies Abuja] R Blogdown: Create personal websites using R blogdown package"
events[25] <- "25 - [RLadies Gaborone] R packages for data cleaning and 
[RLadies Baltimore and Washington DC] Introduction to bookdown and 
[RLadies Bucharest] Build a new habit in 2022 and
[RLadies Sydney] My favourite things (about R)" 
events[26] <- "26 - [RLadies Coventry] How to unlock Twitter's hidden meta data: An introduction to the rtweet package and
[RLadies Tunis] Time series analysis in R"
events[27] <- "27 - [RLadies RTP] #tidytuesday Work Group and
[RLadies Urmia] Book Club R4DS and
[RLadies Freiburg] Best of 2021: Data Wrangling with the tidyverse"
events[28] <- "28 - [RLadies Chennai] Data analysis using the dplyr package"

# Creating the calendar
png(file = "rladies_calendar_jan2022_v2.png", width = 1024, height = 768)
rladies<-calendR(month=1, 
                 weeknames = c("Mon", "Tue", "Wed", "Thu", 
                                "Fri", "Sat","Sun"),   
                 weeknames.size = 6,
                 day.size = 2.75, 
                 days.col = "black",
                 lty = 1,                   
                 special.days = events,
                 special.col = 1:14,
                 legend.pos = "right")

library(ggplot2)
library(png)
library(patchwork)    
my_image <- readPNG("rladiesglobal_logo.png", native = TRUE)
rladies+scale_fill_manual(name = "Rladies Meetups - January 2022", values=c(
                                   "6 - [RLadies Urmia] My Data Science Learning Journey"="magenta3", 
                                   "8 - [RLadies Natal] Regressão Linear"="hotpink",	
                                   "11 - [RLadies Boulder] RLadies #22: Frequentist & Bayesian Random Effects Models in R: RStan Tutorial"="purple",
                                   "12 - [RLadies New York] Package Development Workshop (Day 1) - Your First Package"="plum", 
                                   "13 - [RLadies New York] Package Development Workshop (Day 2) - Package Documentation and 
[RLadies Cuernavaca] Introducción a R y RStudio and 
[RLadies Twin Cities] R for Complete Newbies"="pink",
                                   "17 - [RLadies Remote] R Package Development Workshop Series"="purple",
                                   "18 - [RLadies Santiago] Club de lectura del libro Data Feminism and
[RLadies Irvine] R Goals for 2022! and
[RLadies Philly] Resolutions 2022!"="violetred", 
                                   "19 - [RLadies Seattle] Reactor x PNW Tech Community Networking"="orchid",
                                   "20 - [RLadies Vancouver] Git/Github workshop and 
[RLadies Montreal] RLadies Meeting: TBC"="maroon", 
                                   "22 - [RLadies Abuja] R Blogdown: Create personal websites using R blogdown package"="violet", 
                                   "25 - [RLadies Gaborone] R packages for data cleaning and 
[RLadies Baltimore and Washington DC] Introduction to bookdown and 
[RLadies Bucharest] Build a new habit in 2022 and
[RLadies Sydney] My favourite things (about R)"="purple", 
                                   "26 - [RLadies Coventry] How to unlock Twitter's hidden meta data: An introduction to the rtweet package and
[RLadies Tunis] Time series analysis in R"="lightpink", 
                                   "27 - [RLadies RTP] #tidytuesday Work Group and
[RLadies Urmia] Book Club R4DS and
[RLadies Freiburg] Best of 2021: Data Wrangling with the tidyverse"="plum3",
                                   "28 - [RLadies Chennai] Data analysis using the dplyr package"="purple"))+
  
  theme(legend.key.size = unit(1, units = "cm"), # Keys size
        legend.text = element_text(size =11),
        legend.title = element_text(size=20)) +
  labs(caption="Source: www.meetup.com/pro/rladies
       Created by @fblpalmeira") +
                   # Combine plot & image
  inset_element(p = my_image,
                left = 0.8,
                bottom = 0.8,
                right = 0.95,
                top = 0.95,
                align_to = "full")# Text size

dev.off()
  
