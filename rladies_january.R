library(calendR)
Sys.setlocale("LC_ALL", "English")

# Vector of NA of the same length of the number of days of the year
events <- rep(NA, 31)

# Set the corresponding events
events[6] <- "6 - [RLadies Urmia] My Data Science Learning Journey"
events[8] <- "8 - [RLadies Natal] Regressão Linear"
events[12] <- "12 - [RLadies New York] Package Development Workshop (Day 1) - Your First Package"
events[13] <- "13 - [RLadies New York] Package Development Workshop (Day 2) - Package Documentation and 
[RLadies Cuernavaca] Introducción a R y RStudio" 
events[18] <- "18 - [RLadies Philly] Resolutions 2022!"
events[19] <- "19 - [RLadies Seattle] Reactor x PNW Tech Community Networking"
events[20] <- "20 - [RLadies Vancouver] Git/Github workshop and 
[RLadies Montreal] RLadies Meeting: TBC"
events[22] <- "22 - [RLadies Abuja] R Blogdown: Create personal websites using R blogdown package"
events[25] <- "25 - [RLadies Gaborone] R packages for data cleaning and 
[RLadies Baltimore and Washington DC] Introduction to bookdown and 
[RLadies Bucharest] Build a new habit in 2022" 
events[26] <- "26 - [RLadies Coventry] How to unlock Twitter's hidden meta data: An introduction to the rtweet package"
events[27] <- "27 - [RLadies RTP] #tidytuesday Work Group"

# Creating the calendar
png(file = "rladies_calendar_jan2022.png", width = 1024, height = 768)
rladies<-calendR(month=1, 
                 weeknames = c("Mon", "Tue", "Wed", "Thu", 
                                "Fri", "Sat","Sun"),   
                 weeknames.size = 6,
                 day.size = 3, 
                 days.col = "black",
                 lty = 1,                   
                 special.days = events,
                 special.col = 1:11,
                 legend.pos = "right")

# Creating a legend
library(ggplot2)
library(png)
library(patchwork)    
my_image <- readPNG("rladies_global_logo.png", native = TRUE)
rladies+scale_fill_manual(name = "Rladies Meetups", values=c("6 - [RLadies Urmia] My Data Science Learning Journey"="magenta3", 
                                   "8 - [RLadies Natal] Regressão Linear"="hotpink",	
                                   "12 - [RLadies New York] Package Development Workshop (Day 1) - Your First Package"="plum", 
                                   "13 - [RLadies New York] Package Development Workshop (Day 2) - Package Documentation and 
[RLadies Cuernavaca] Introducción a R y RStudio"="pink",
                                   "18 - [RLadies Philly] Resolutions 2022!"="violetred", 
                                   "19 - [RLadies Seattle] Reactor x PNW Tech Community Networking"="orchid",
                                   "20 - [RLadies Vancouver] Git/Github workshop and 
[RLadies Montreal] RLadies Meeting: TBC"="maroon", 
                                   "22 - [RLadies Abuja] R Blogdown: Create personal websites using R blogdown package"="violet", 
                                   "25 - [RLadies Gaborone] R packages for data cleaning and 
[RLadies Baltimore and Washington DC] Introduction to bookdown and 
[RLadies Bucharest] Build a new habit in 2022"="purple", 
                                   "26 - [RLadies Coventry] How to unlock Twitter's hidden meta data: An introduction to the rtweet package"="lightpink", 
                                   "27 - [RLadies RTP] #tidytuesday Work Group"="plum4"))+
  theme(legend.key.size = unit(1, units = "cm"), 
        legend.text = element_text(size = 11),
        legend.title = element_text(size=20)) +
  labs(caption="* All events will be virtual or hybrid, except RLadies Montreal and RLadies Abuja
  Source: www.meetup.com/pro/rladies
       Created by @fblpalmeira") +

# Combine plot & image
  inset_element(p = my_image,
                left = 0.8,
                bottom = 0.8,
                right = 0.95,
                top = 0.95,
                align_to = "full")

dev.off()
  
