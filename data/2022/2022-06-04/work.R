
library(tidyverse)
library(scales)
library(readxl)
library(janitor)

# question 5
q5 = read_xlsx(path = 'FR_EU-T1Q5.xlsx', sheet = 'LGBTI-age')

glimpse(q5)

q5 = q5 %>% 
  transmute(country = CountryCode,
         age = factor(age),
         answer = factor(answer),
         target_group = factor(target_group),
         question = factor(question_label),
         percentage = as.numeric(percentage))

head(q5)

q5 %>% 
  select(age) %>% 
  distinct()

q5 %>% 
  group_by(age)





