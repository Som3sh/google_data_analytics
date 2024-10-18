# Packages
install.packages("palmerpenguins")
install.packages('tidyverse')
# Library
library("palmerpenguins")
library("tidyverse")
View(penguins)
summary(penguins)
vc_1 <- c(1,2,3,4,5,6)
(vc_1)**2
# our first calculations

quarter_1_sales <- 35657.98 

quarter_2_sales <- 43810.55 

midyear_sales <- quarter_1_sales + quarter_2_sales 
installed.packages(priority = "base")
#-------------------------------------------------------------------------------
data("ToothGrowth")
View(ToothGrowth)
filtered_tg <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len , na.rm = T) , .group = "drop")



#-------------------------------------------------------------------------------

install.packages("here")
library(here)
install.packages("skimr")
library(skimr)
install.packages("janitor")
library("janitor")
install.packages("dplyr")
library(dplyr)



#-------------------------------------------------------------------------------

skim_without_charts(penguins)
glimpse(penguins)


penguins %>% 
  select(-species)


penguins %>% 
  rename(island_new = island)

#-------------------------------------------------------------------------------
install.packages("tidyr")
library(tidyr)
pengins2 <- penguins %>% 
  arrange(-bill_length_mm)

pengins2
penguins %>%  group_by(island) %>%  drop_na() %>%  summarize(mean_bill_length_mm = 
                                                               mean(bill_length_mm))
penguins %>%  group_by(island) %>%  drop_na() %>%  summarize(max_bill_length_mm = 
                                                               max(bill_length_mm))

penguins %>%  group_by(species , island) %>%  drop_na() %>%  summarize(mean_bl = 
                                                               mean(bill_length_mm) , max_bl = 
                                                                 max(bill_length_mm))
#-------------------------------------------------------------------------------

bookings_df <- read.csv("Downloads/Hotel Bookings.csv")
View(bookings_df)
head(bookings_df)
colnames(bookings_df)
data <- data_frame(bookings_df)
attach(data)  

sum(is_canceled)

#-------------------------------------------------------------------------------
id <- c(1:10)


name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")


job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")


employee <- data.frame(id, name, job_title)
seperate(employee , name , into = c('first_name' , 'last_name'), sep=' ')

