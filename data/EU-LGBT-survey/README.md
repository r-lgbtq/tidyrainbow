
# EU LGBT Survery

FRA (Fundamental Rights Agency) conducted an online survey to identify how lesbian, gay, bisexual and transgender (LGBT) people living in the European Union and Croatia experience the fulfillment of their fundamental rights. The evidence produced by the survey will support the development of more effective laws and policies to fight discrimination, violence and harassment, improving equal treatment across society. The need for such an EU-wide survey became evident after the publication in 2009 of the first FRA report on homophobia and discrimination on grounds of sexual orientation or gender identity, which highlighted the absence of comparable data. The European Commission then requested FRA to collect comparable data across the EU on this issue. FRA organised the data collection in the form of an online survey covering all EU Member States and Croatia. The respondents were persons aged 18 years and over, who identify themselves as lesbian, gay, bisexual or transgender, anonymously. The survey was made available online, from April to July 2012, in all 23 official EU languages (except Irish) plus Catalan, Croatian, Luxembourgish, Russian and Turkish. In total, 93,079 LGBT persons completed the survey. FRA’s inhouse experts designed the survey which was implemented by Gallup, one of the market leaders in large-scale surveys. In addition, civil society organisations including ILGA-Europe (European Region of the International Lesbian, Gay, Bisexual, Trans and Intersex Association) and Transgender Europe (TGEU) provided advice on how to best approach LGBT people. [from Kaggle]()


## Data has 5 datasets for each domain

- Daily Life
- Discrimination
- Violence and Harassment
- Rights Awareness
- Transgender Specific Questions (subset dataset)


## Schema of all datasets

- `CountryCode` - name of the country
- `subset` - Lesbian, Gay, Bisexual women, Bisexual men or Transgender (for Transgender Specific Questions table the value is only Transgender)
- `question_code` - unique code ID for the question
- `question_label` - full question text
- `answer` - answer given
- `percentage`
- `notes` - `[0]`: small sample size; `[1]`: NA due to small sample size; `[2]`: missing value




















