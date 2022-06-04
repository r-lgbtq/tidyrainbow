
# FRA-EU Survey

A total of 139,799 persons aged 15 years or older who describe themselves as lesbian, gay, bisexual, trans or intersex (LGBTI) completed the online EU-LGBTI II Survey in all EU Member States and the candidate countries of North Macedonia and Serbia.

The survey was conducted online3 from 27 May to 22 July 2019. Its questionnaire covered a wide range of issues, such as experiences with discrimination, harassment or violence, rights awareness, openness about being LGBTI, positive and negative experiences at work and in education, socio-economic and living conditions, health and well-being, and housing issues.

The findings are based on data weighted to take into account differences in the estimated size of each LGBTI group in each survey country and by age group, based on information on the LGBTI population from previous LGBTI surveys in the EU. In addition, the data were weighted taking into account the respondents’ affiliation with LGBTI organisations and whether they have participated in other LGBTI surveys (including FRA’s LGBT survey of 2012). This was done to correct for possible over-representation of respondents closely affiliated with LGBTI organisations and with a higher propensity to participate in LGBTI surveys.


**Note**
> EU-28 = UK,  UK and EU-28 exist together in dataset
  some age ranges for specific groups have missing countries


### data cleaning

Each dataset was cleaned by removing the rows 1 to 14, deleted column `question_code` and `notes`, replaced all values in `percentage` column that contained ':' as a missing value holder with NA. Categories or factors with large amount of 'NA' values were removed. The `Trans subgroups` factor "cross-dresser" was excluded from this data.


## Topic 

| number | topic                        |
| :----- | :--------------------------- |
| 1      | Living openly and daily life |
| 2      |                              |


## Questions

| number | question                                                                                                             |
| :----- | :------------------------------------------------------------------------------------------------------------------- |
| 1.     | *Do you avoid holding hands in public with a same-sex partner for fear of being assaulted, threatened or harassed ?* |
| 2.     | *Do you avoid certain places or locations for fear of being assaulted, threatened or harassed due to being LGBTI?*   |   
| 3.     | **                                                                                                                   | 

  
## Target group: 

  - lesbian women 
  - gay men
  - bisexual women
  - bisexual men 
  - trans people
  - intersex 
  
## Group factors  (subset)

| factor     | levels                                             |
| :--------- | :------------------------------------------------- |
| age        | (15-17), (18-24), (25-39), (40-54), (55+ )         |  *
| education  | lower secondary or less, upper secondary, tertiary |
| employment | - paid work (incl. self employment)                |
|            | - unpaid voluntary work                            |
|            | - unemployment                                     |
|            | - student                                          |
|            | - retired                                          |
|            | - unable to work - health issues                   |
|            | - otherwise not working                            |
| openness   | about being LGBTI                                  |
|            | very open, fairly open, rarely open, never open    |
| partner    | female, male, other/non-binary, no partner         |
| residence  | city, suburbs, town, country village, countryside  | 
| gender_id  | trans women                                        |
|            | trans man                                          |
|            | trans person                                       |
|            | non-binary                                         |
|            | genderqueer                                        |
|            | genderfluid                                        |
|            | agender                                            |
|            | polygender                                         | 



  
  
  
  
  


## Data

| dataset            | description  (categories or factors)             |   
| :----------------- | :----------------------------------------------- | 
| T1Q1-LGBTI-age     | topic 1 question 1 for all age categories        |  
| T1Q1-LGBTI-edu     | topic 1 question 1 for all education categories  |    
| T1Q1-LGBTI-emp     | topic 1 question 1 for all employment categories |    
| T1Q1-LGBTI-open    | topic 1 question 1  level of LGBTI openness      |   
| T1Q1-LGBTI-partner | topic 1 question 1  partner type                 |    
| T1Q1-LGBTI-res     | topic 1 question 1  place of residence           |   
| T1Q1-T-gender      | topic 1 question 1 Transgender gender identities | 
| T1Q2-LGBTI-age     | topic 1 question 2 for all age categories        |  
|                    |                                                  |   
|                    |                                                  |     
|                    |                                                  |        













