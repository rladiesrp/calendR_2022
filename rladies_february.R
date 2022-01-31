#library(calendR)
Sys.setlocale("LC_ALL", "English")

# Vector of NA of the same length of the number of days of the month
events <- rep(NA, 28)

# Set the corresponding events
events[1] <- "1 - [RLadies Zürich] Second meetup"
events[2] <- "2 - [RLadies Urmia] Making a report or presentation using Rmarkdown"
events[3] <- "3 - [RLadies Melbourne] Automate your CV using R Markdown: Easy as 1, 2, knit"
events[4] <- "4 - [RLadies Chennai] Data Analysis Using the dply Package" 
events[9] <- "9 - [RLadies Tunis] Using R for commercial projects: challenges and opportunities"
events[10] <- "10 - [RLadies Freiburg] Best of 2021: Data Visualization with ggplot2"
events[11] <- "11 - [RLadies Taipei] Global AI Bootcamp in Taiwan"
events[12] <- "12 - [RLadies Gaborone] R Data Analysis in Medical Science"
events[14] <- "14 - [RLadies Athens] Data Science Book Club"
events[15] <- "15 - [RLadies Bucharest] Meetup #20: Packages that help writing efficient R code" 
events[16] <- "16 - [RLadies Philly] 2022 Datathon Kickoff"
events[17] <- "17 - [RLadies Montreal] RLadies Meeting: TBC"
events[22] <- "22 - [RLadies Baltimore] Data Privacy Preserving Applications with R and
[RLadies St. Louis] Teach Me How to Google and
[RLadies Washington D.C.] Getting started with reproducibility and R markdown"
events[23] <- "23 - [RLadies Jeddah] First Meetup! Using R in the humanities"
events[25] <- "25 - [RLadies Queretaro] Mapas por desagregaciones geográficas de México"

# Creating the calendar
png(file = "rladies_calendar_feb2022_v1.png", width = 1024, height = 768)
rladies<-calendR(month=2, 
                 weeknames = c("Mon", "Tue", "Wed", "Thu", 
                               "Fri", "Sat","Sun"),   
                 weeknames.size = 6,
                 day.size = 2.75, 
                 days.col = "black",
                 lty = 1,                   
                 special.days = events,
                 special.col = 1:15,
                 legend.pos = "right")

#library(ggplot2)
#library(png)
#library(patchwork)    
my_image <- readPNG("rladiesglobal_logo.png", native = TRUE)
rladies+scale_fill_manual(name = "February 2022", values=c(
  "1 - [RLadies Zürich] Second meetup"="magenta3", 
  "2 - [RLadies Urmia] Making a report or presentation using Rmarkdown"="hotpink",	
  "3 - [RLadies Melbourne] Automate your CV using R Markdown: Easy as 1, 2, knit"="purple",
  "4 - [RLadies Chennai] Data Analysis Using the dply Package"="plum", 
  "9 - [RLadies Tunis] Using R for commercial projects: challenges and opportunities"="pink",
  "10 - [RLadies Freiburg] Best of 2021: Data Visualization with ggplot2" = "magenta3",
  "11 - [RLadies Taipei] Global AI Bootcamp in Taiwan"="purple",
  "12 - [RLadies Gaborone] R Data Analysis in Medical Science"="violetred", 
  "14 - [RLadies Athens] Data Science Book Club"="orchid",
  "15 - [RLadies Bucharest] Meetup #20: Packages that help writing efficient R code"="maroon", 
  "16 - [RLadies Philly] 2022 Datathon Kickoff"="violet", 
  "17 - [RLadies Montreal] RLadies Meeting: TBC"="purple", 
  "22 - [RLadies Baltimore] Data Privacy Preserving Applications with R and
[RLadies St. Louis] Teach Me How to Google and
[RLadies Washington D.C.] Getting started with reproducibility and R markdown"="lightpink", 
  "23 - [RLadies Jeddah] First Meetup! Using R in the humanities"="plum3",
  "25 - [RLadies Queretaro] Mapas por desagregaciones geográficas de México"="hotpink"))+
  
  theme(legend.key.size = unit(1, units = "cm"), # Keys size
        legend.text = element_text(size =12.5),
        legend.title = element_text(size=20)) +
  labs(caption="Source: www.meetup.com/pro/rladies
       Created by @fblpalmeira") +
  # Combine plot & image
  inset_element(p = my_image,
                left = 0.85,
                bottom = 0.85,
                right = 0.975,
                top = 0.975,
                align_to = "full")# Text size

dev.off()

##################