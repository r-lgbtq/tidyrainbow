


# -------------------------------------------------------------------------
# Gender-based violence and unwanted sexual behaviour in Canada, 2018: Initial findings 
# from the Survey of Safety in Public and Private Spaces

# The sample size for the 10 provinces was 43,296 respondents. 
# The overall response rate was 43.1%. Non-respondents included people who refused to participate, 
# could not be reached, or could not speak English or French. Respondents in the sample were weighted 
# so that their responses represent the non-institutionalized Canadian population aged 15 and older.

#------ data dictionary for csv 
# usbps = unwanted sexual behaviour in public spaces
# ubo = unwanted behavior online

# https://www150.statcan.gc.ca/n1/pub/85-002-x/2019001/article/00017/tbl/tbl03-eng.htm
# https://www150.statcan.gc.ca/n1/pub/85-002-x/2019001/article/00017-eng.htm#a20











#--------------------------------------------------------------------------
# https://www150.statcan.gc.ca/n1/en/daily-quotidien/210615/dq210615a-eng.pdf?st=AqjyOMFZ
# https://www150.statcan.gc.ca/n1/daily-quotidien/200909/dq200909a-eng.htm

# 2018: Survey of Safety in Public and Private Spaces
# The sample size for the 10 provinces was 43,296 respondents.

0.04*1e6

Canadian_Pop_2018 = 37.07e6

Canadian_Pop_2018 *0.04

gay_men = 255100
lesbian_women = 150600
bisexual_women = 332000
bisexual_men = 161200

ages_15plus = gay_men + lesbian_women + bisexual_men + bisexual_women

ages_15plus/ Canadian_Pop_2018
# = 24%  correct

same_sex_couples_2016 = 72880
# 33.4%
married_same_sex_2016 = 24342

same_sex_couples_2016 * .012
# 12% had kids
same_sex_with_kids_2016= 874.56

ages_15plus_lessThan20k_income = 2192439 # 41%
# average LGBTQ+ income = $39,000 vs non-LGBTQ+ $54,000

# 33% LGBTQ difficult to meet their needs   vs 27% non-LGBTQ+
ages_15plus_hard2meetNeeds = 296637  

# 27% LGBTQ homelessness / insecure housing in lifetime  vs 13% non-LGBTQ
ages_15plus_homelessless = 242703

# LGBTQ youth 15-24 living outside parent home  vs 24% non-LGBTQ
ages_15_24_outsideHome = 314615


# ages_15plus * 0.35
# /ages_15plus








# -------------------------------------------------------------------------


# hate crimes 2019, n= 263
hate_crimes_2019 = 263

target_sexual_orientation = 139.39 # 53%
target_Gay_Lesbian = 231.44 # 88%
target_bisexuals = 5.26 # 2%
target_non_Hetero = 15.78  # 6%
target_unknown_sexOrientation = 10.52 # 4%

target_religion = 71.01 # 27%
target_race_ethnicity_violent = 136.76 # 52%

hate_crimes_2019 #* 0.52


# -------------------------------------------------------------------------


Survey_2018_n = 43296


trans_non_binary = 10391.04 # 24%

# sexual minority experience with inappropriate behaviors in public, online, at work
sexual_minoity_harrassment_public = 24678.72 # 57%
sexual_minoity_harrassment_online = 16019.52 # 37%
sexual_minoity_harrassment_work =  19050.24 # 44% 

# mental health 
sexual_minoity_MentalHealth_poor = 13854.72 # 32%
sexual_minoity_SuicideIdeation = 17318.4 # 40%
sexual_minoity_Mood_Anxiety = 17751.36 # 41%








# Canadian Community Health Survey ----------------------------------------
# https://www150.statcan.gc.ca/n1/pub/89-28-0001/2018001/article/00021-eng.htm#a7

# The Canadian Community Health Survey (CCHS) is a 
# cross-sectional survey that collects information related 
# to health status, health care utilization and health 
# determinants for the Canadian population. 

# sample of 130,000 respondents every two years for LGB population

# 2021: estimated 900,000 LGB Canadians

LGB_Canadians = 9e5
sample_CCHS_n = 130e3

#  StatsCan is unclear what sample n they are using for their % //    
f = function(x){
  m = LGB_Canadians *x
  
  glue::glue('LGB Canadian {m} = {m/LGB_Canadians*100}%')
}

s = function(x){
  n = sample_CCHS_n *x
  glue::glue('Sample CCHS {n} = {n/sample_CCHS_n*100}%')
}


# LGB 90,000 (%) |= CCHS (%) << larger number on right side
bisexuals = 2340                # 1.8% |= 16,200
bisexual_women = 3120           # 2.4% |= 21,600
gay_lesbian = 1950              # 1.5% |= 13,500
gay_lesbian_women = 1430        # 1.1% |= 9,900
gay_men = 2470                  # 1.9% |= 17,100
bisexual_men = 1560             # 1.2% |= 10,800

LGB= c(16200,21600,13500,9900,17100,10800) # = 89,100


# -----
urban_area = 96720 # 74.4%
urban_area_gay_men = 102830 # 79.1%
urban_area_gayLesbian_women = 86450 # 66.5%
urban_area_bisexuals = 89310 # 68.7%

# gays & lesbians lived in Toronto, Montreal, Vancouver
LG_TMV = 60450 # 46.5%
bisexuals_TMV = 49270 # 37.9%
gay_men_TMV = 67990 #52.3%
bisexual_men_TMV = 54860 # 42.2%
LG_TMV_women = 47710 # 36.7%
bisexual_women_TMV = 46540 # 35.8%

# ---- marriage/ common-law    // same sex marriage legal 2005


#------ proportion_hetero_married = 501300      # 55.7% |= 72,410

# married_ages_25_64_LGB = 60840          # 46.8% |= 421,200 ---
# married_ages_25_64_hetero = 92690       # 71.3% |= 641,700 -----

# commonLaw_hetero = 20150                # 15.5% |= 139,500 ----
# divorced_hetero = 12740                 # 9.8%  |= 88,200 ---
# single_hetero = 24570                    # 18.9% |= 170,100 ---

# married_bisexuals = 29900               # 23%   |= 207,000 ---
# commonLaw_bisexuals = 29640             # 22.8% |= 205,200 
# divorced_bisexuals = 14040              # 10.8% |= 97,200
# single_bisexuals = 57330                 # 44.1% |= 396,900

# married_gay_lesbian = 22230             # 17.1% |= 153,900 ---
# commonLaw_gay_lesbian = 40040           # 30.8% |= 277,200 
# divored_gay_lesbian = 8970              # 6.9%  |= 62,100
# single_gay_lesbian = 58890               # 45.3% |= 407,700
# x = .468
# f(x)
# s(x)

# 

# 92690 + 60840












# data.world  -------------------------------------------------------------

library(tidyverse)
library(janitor)

# LGBTQIA+ Quality of life Survey
# https://data.world/cityofaustin/34qp-i76m/workspace/project-summary?agentid=cityofaustin&datasetid=34qp-i76m

# df = read_csv('./data/2022/lgbtqia-quality-of-life-study-all-responses-1.csv') %>% clean_names()
# 
# head(df)




df1 = df %>% 
  select(what_zip_code_do_you_live_in,
         what_is_your_age, 
         what_is_your_racial_and_ethnic_category_select_one_selected_choice,
         what_best_describes_your_sexual_orientation_select_one_selected_choice,
         do_you_identify_as_intersex,
         what_best_describes_your_current_gender_identity_select_one_definitions_agender_denoting_or_relating_to_a_person_who_does_not_have_a_gender_identity_or_identifies_as_gender_neutral_cisgender_a_term_used_to_describe_a_person_whose_gender_ide,

        how_would_you_rate_your_overall_physical_health,
        
        how_much_do_you_worry_about_your_health,
        what_health_care_coverage_do_you_currently_have_select_all_that_apply_selected_choice,
        do_you_have_any_of_the_following_select_all_that_apply,
        in_the_past_12_months_have_you_visited_any_of_the_following_for_medical_care_select_all_that_apply,
        in_the_past_12_months_have_you_put_off_getting_any_of_these_services_because_you_could_not_afford_them_select_all_that_apply_selected_choice,
        how_long_has_it_been_since_you_last_visited_a_primary_care_provider_for_a_routine_checkup_select_one,
        what_kind_of_primary_care_provider_do_you_see_most_often_select_one_selected_choice,
        did_you_choose_your_primary_care_provider_based_on_their_knowledge_of_the_health_care_needs_of_lgbtqia_people,
        have_you_shared_that_you_are_lgbtqia_with_your_primary_care_provider,
        how_would_you_rate_your_satisfaction_with_the_health_care_services_you_receive_from_your_primary_care_provider,
        
        
        do_you_have_any_physical_disabilities_any_limitation_on_a_persons_physical_functioning_mobility_dexterity_or_stamina_is_counted_this_includes_cerebral_palsy_cp_epilepsy_any_cancer_alzheimera_t_ms_cystic_fibrosis_cf_multiple_sclerosis_ms,
        do_you_have_any_diagnosed_neurodivergence_select_all_that_apply_selected_choice,
        
        were_you_born_in_the_us,
        if_no_what_age_did_you_come_to_the_us,
        how_long_have_you_lived_in_the_austin_area,
        
        in_the_past_12_months_have_you_experienced_any_of_the_following_anti_lgbtqia_behavior_select_all_that_apply,
        have_you_ever_experienced_verbal_abuse_or_harassment_in_austin_because_you_are_lgbtqia_select_all_that_apply,
        for_your_most_recent_experience_in_austin_did_the_verbal_abuse_or_harassment_come_from_one_of_these_people_if_so_which_one_select_one_selected_choice,
        for_your_most_recent_experience_did_you_seek_help_or_report_it_1,
        
        while_living_in_austin_have_you_ever_experienced_any_lgbtqia_related_stigma_or_discrimination,
        for_your_most_recent_experience_did_the_lgbtqia_related_stigma_or_discrimination_come_from_one_of_these_people_if_so_which_one_select_one_selected_choice,
        do_you_know_someone_in_austin_that_has_ever_experienced_physical_threat_or_attack_because_they_were_lgbtqia_select_all_that_apply,
        have_you_ever_experienced_physical_threat_or_attack_because_you_are_lgbtqia_in_austin_select_all_that_apply,
        for_your_most_recent_experience_in_austin_did_the_physical_threat_or_attack_come_from_one_of_these_people_if_so_which_one_select_one_selected_choice,
        for_your_most_recent_experience_did_you_seek_help_or_report_it,
        for_your_most_recent_experience_to_whom_did_you_seek_help_or_report_select_all_that_apply_selected_choice,
        for_your_most_recent_experience_to_whom_did_you_seek_help_or_report_select_all_that_apply_other_please_specify_text,
        
        do_you_feel_safe_in_your_relationship_with_your_romantic_or_intimate_partner,
        have_you_been_physically_hurt_or_threatened_by_your_partner,
        has_your_partner_pressured_you_to_or_made_you_engage_in_unwanted_sexual_activities,
        has_anyone_who_wasna_t_mt_your_romantic_partner_pressured_you_to_or_made_you_engage_in_unwanted_sexual_activity_at_any_time_in_your_adult_life_select_all_that_apply,
        did_anyone_pressure_you_to_or_made_you_engage_in_unwanted_sexual_activity_at_any_time_during_your_childhood,
        
        
        have_you_been_denied_employment_or_terminated_from_employment_due_to_any_of_the_following_select_all_that_apply,
        has_someone_you_know_or_known_been_denied_employment_or_terminated_from_employment_due_to_any_of_the_following_select_all_that_apply,
        if_you_are_hiv_positive_have_you_ever_experienced_any_stigma_or_discrimination_based_on_your_serostatus_while_living_in_austin,
        for_your_most_recent_experience_did_the_hiv_related_stigma_or_discrimination_come_from_one_of_these_people_if_so_which_one_select_one_selected_choice,
        
        what_language_do_you_speak_most_often_selected_choice,
        which_best_describes_your_current_military_service_status_select_one
        
         ) %>% 
  transmute(zip_code = what_zip_code_do_you_live_in,
         age_range = str_remove_all(what_is_your_age, pattern = "years old"),
         race_ethnicity = what_is_your_racial_and_ethnic_category_select_one_selected_choice,
         sexual_orientation = what_best_describes_your_sexual_orientation_select_one_selected_choice,
         identify_as_intersex = do_you_identify_as_intersex,
         gender_identity = what_best_describes_your_current_gender_identity_select_one_definitions_agender_denoting_or_relating_to_a_person_who_does_not_have_a_gender_identity_or_identifies_as_gender_neutral_cisgender_a_term_used_to_describe_a_person_whose_gender_ide,
         physical_disabilities = do_you_have_any_physical_disabilities_any_limitation_on_a_persons_physical_functioning_mobility_dexterity_or_stamina_is_counted_this_includes_cerebral_palsy_cp_epilepsy_any_cancer_alzheimera_t_ms_cystic_fibrosis_cf_multiple_sclerosis_ms,
         neurodivergence_diagnosis = do_you_have_any_diagnosed_neurodivergence_select_all_that_apply_selected_choice,
         
         USA_born = were_you_born_in_the_us,
         immigration_age = if_no_what_age_did_you_come_to_the_us,
         years_lived_austin_area = how_long_have_you_lived_in_the_austin_area,
         
         overall_physical_health = how_would_you_rate_your_overall_physical_health,
         
         
         health_worry_level = how_much_do_you_worry_about_your_health,
         healthcare_coverage = what_health_care_coverage_do_you_currently_have_select_all_that_apply_selected_choice,
         insurance_type = do_you_have_any_of_the_following_select_all_that_apply,
         visited_medical_care = in_the_past_12_months_have_you_visited_any_of_the_following_for_medical_care_select_all_that_apply,
         delayed_medical_services = in_the_past_12_months_have_you_put_off_getting_any_of_these_services_because_you_could_not_afford_them_select_all_that_apply_selected_choice,
         last_visit_primary_care_provider =  how_long_has_it_been_since_you_last_visited_a_primary_care_provider_for_a_routine_checkup_select_one,
         primary_care_provider_type = what_kind_of_primary_care_provider_do_you_see_most_often_select_one_selected_choice,
         chose_primary_care_provider_LGBTQIA_based = did_you_choose_your_primary_care_provider_based_on_their_knowledge_of_the_health_care_needs_of_lgbtqia_people,
         told_primary_care_provider_LGBTQIA = have_you_shared_that_you_are_lgbtqia_with_your_primary_care_provider,
         primary_care_provider_rating = how_would_you_rate_your_satisfaction_with_the_health_care_services_you_receive_from_your_primary_care_provider,
         
         

         experienced_anti_LGBTQIA_behaviour = in_the_past_12_months_have_you_experienced_any_of_the_following_anti_lgbtqia_behavior_select_all_that_apply,
         experienced_verbal_abuse_harassment = have_you_ever_experienced_verbal_abuse_or_harassment_in_austin_because_you_are_lgbtqia_select_all_that_apply,
         verbal_abuse_harassment_source = for_your_most_recent_experience_in_austin_did_the_verbal_abuse_or_harassment_come_from_one_of_these_people_if_so_which_one_select_one_selected_choice,
         seek_help_report_it = for_your_most_recent_experience_did_you_seek_help_or_report_it_1,
         
         
         austin_area_discrimination = while_living_in_austin_have_you_ever_experienced_any_lgbtqia_related_stigma_or_discrimination,
         discrimination_source = for_your_most_recent_experience_did_the_lgbtqia_related_stigma_or_discrimination_come_from_one_of_these_people_if_so_which_one_select_one_selected_choice,
         another_person_experienced_physical_threat_attack = do_you_know_someone_in_austin_that_has_ever_experienced_physical_threat_or_attack_because_they_were_lgbtqia_select_all_that_apply,
         personal_experience_physical_threat_attack = have_you_ever_experienced_physical_threat_or_attack_because_you_are_lgbtqia_in_austin_select_all_that_apply,
         personal_physical_threat_attack_source = for_your_most_recent_experience_in_austin_did_the_physical_threat_or_attack_come_from_one_of_these_people_if_so_which_one_select_one_selected_choice,
         sought_help_report_it = for_your_most_recent_experience_did_you_seek_help_or_report_it,
         sought_help_report_it_resource = for_your_most_recent_experience_to_whom_did_you_seek_help_or_report_select_all_that_apply_selected_choice,
         sought_help_report_it_specified = for_your_most_recent_experience_to_whom_did_you_seek_help_or_report_select_all_that_apply_other_please_specify_text,
         
         safe_relationship_romantic_intimate = do_you_feel_safe_in_your_relationship_with_your_romantic_or_intimate_partner,
         your_partner_hurt_threatened = have_you_been_physically_hurt_or_threatened_by_your_partner,
         your_partner_pressured_unwanted_sexual_activities = has_your_partner_pressured_you_to_or_made_you_engage_in_unwanted_sexual_activities,
         nonpartner_pressured_unwanted_sexual_activities_adult_life = has_anyone_who_wasna_t_mt_your_romantic_partner_pressured_you_to_or_made_you_engage_in_unwanted_sexual_activity_at_any_time_in_your_adult_life_select_all_that_apply,
         anyone_pressured_unwanted_sexual_activities_childhood = did_anyone_pressure_you_to_or_made_you_engage_in_unwanted_sexual_activity_at_any_time_during_your_childhood,
         
         
         employment_denied_terminated = have_you_been_denied_employment_or_terminated_from_employment_due_to_any_of_the_following_select_all_that_apply,
         another_person_denied_terminated_employment = has_someone_you_know_or_known_been_denied_employment_or_terminated_from_employment_due_to_any_of_the_following_select_all_that_apply,
         HIV_pos_serostatus_discrimination = if_you_are_hiv_positive_have_you_ever_experienced_any_stigma_or_discrimination_based_on_your_serostatus_while_living_in_austin,
         HIV_stigma_discrimination_source = for_your_most_recent_experience_did_the_hiv_related_stigma_or_discrimination_come_from_one_of_these_people_if_so_which_one_select_one_selected_choice,
         
         
         primary_language = what_language_do_you_speak_most_often_selected_choice,
         military_service = which_best_describes_your_current_military_service_status_select_one
         
       
         )

head(df1)


write_csv(df1, "LGBTQ-Survey-part1.csv" )


df2= df %>% 
  select(
    what_is_your_age, 
    what_is_your_racial_and_ethnic_category_select_one_selected_choice,
    what_best_describes_your_sexual_orientation_select_one_selected_choice,
    do_you_identify_as_intersex,
    what_best_describes_your_current_gender_identity_select_one_definitions_agender_denoting_or_relating_to_a_person_who_does_not_have_a_gender_identity_or_identifies_as_gender_neutral_cisgender_a_term_used_to_describe_a_person_whose_gender_ide,
    what_best_describes_your_sexual_orientation_select_one_selected_choice,
    how_would_you_rate_your_overall_physical_health,
    
    please_check_what_you_believe_are_the_five_most_important_policy_priorities_affecting_non_binary_transgender_intersex_and_other_gender_diverse_people_in_the_u_s_select_up_to_five_that_are_a_priority,
    what_actions_have_you_taken_because_of_the_black_lives_matter_movement_select_all_that_apply_selected_choice,
    racism_is_a_public_health_crisis,
    which_of_the_following_experiences_have_you_had_in_your_interaction_with_the_police_select_all_that_apply,
    how_comfortable_do_you_feel_seeking_help_from_the_police,
    
    
    in_the_past_12_months_how_often_has_your_mental_health_status_kept_you_from_doing_your_normal_daily_activities_such_as_work_or_recreation,
    in_the_past_12_months_how_often_has_your_physical_health_status_kept_you_from_doing_your_normal_daily_activities,
    in_the_past_12_months_have_you_received_any_of_these_preventative_screenings_select_all_that_apply,
    
    have_you_ever_been_diagnosed_with_any_of_these_conditions_select_all_that_apply,
    have_you_been_virally_suppressed_undetectable_for_the_past_12_months_or_longer,
    have_you_ever_taken_post_exposure_prophylaxis_pep_pep_is_a_medicine_to_prevent_hiv_after_a_possible_exposure_pep_should_be_used_only_in_emergency_situations_and_must_be_started_within_72_hours_after_a_recent_possible_exposure_to_hiv_if_yes_select_y,
    in_the_past_12_months_did_you_go_to_an_hiv_medical_appointment_get_an_hiv_medication_prescription_or_have_hiv_labs_done,
    
    
    have_you_ever_attempted_to_take_your_own_life,
    
    have_you_experienced_the_following_within_the_past_12_months_i_worried_my_food_would_run_out_before_i_received_money_to_buy_more,
    have_you_experienced_the_following_within_the_past_12_months_the_food_i_bought_didnt_last_and_i_didnt_have_enough_money_to_purchase_more,
    
    have_you_needed_a_bank_loan_in_the_last_12_months,
    have_you_or_a_member_of_your_family_needed_and_applied_for_public_benefits_or_private_assistance_while_living_in_austin,

    in_the_next_12_months_are_you_planning_to_have_or_adopt_a_child_select_one,

    in_the_past_12_months_have_you_done_any_of_the_following_relating_to_sex_work_select_all_that_apply,
    in_the_past_12_months_have_you_done_any_of_the_following_to_reduce_your_risk_of_getting_an_sti_or_hiv_from_sexual_activity_select_all_that_apply,
    
    in_the_past_12_months_have_you_ever_injected_any_drugs_for_recreational_purposes,
    in_the_past_12_months_have_you_sought_help_for_substance_use_issues_from_any_of_the_following_select_all_that_apply_selected_choice,
    
    in_the_past_12_months_have_you_used_any_of_these_substances_select_all_that_apply_selected_choice,
    in_the_past_12_months_how_many_sexual_partners_have_you_had,
    in_the_past_12_months_which_of_the_following_have_you_used_when_engaging_in_sexual_activity_select_all_that_apply,
    
    in_the_past_30_days_did_you_experience_any_of_these_select_all_that_apply,
    in_the_past_30_days_have_you_used_any_of_these_tobacco_products_select_all_that_apply,
    in_the_past_30_days_how_many_days_did_you_have_a_drink_containing_alcohol,
    in_the_past_30_days_how_many_days_did_you_have_3_or_more_drinks_containing_alcohol_on_one_occasion,
    in_the_past_30_days_how_many_days_did_you_use_marijuana,
    in_the_past_30_days_how_many_days_did_you_use_prescription_drugs_for_recreational_non_medical_use,
    in_the_past_30_days_how_many_days_did_you_use_these_substances,
    
    # --
    which_best_describes_how_many_of_your_closest_friends_use_tobacco_products,
    which_best_describes_how_often_you_get_tested_for_hiv_select_one,
    which_best_describes_how_often_you_get_tested_for_st_is_select_one,
    which_best_describes_how_often_you_have_used_condoms_or_dental_dams_in_the_past_12_months,
    which_best_describes_how_often_you_see_a_counselor_social_worker_or_psychologist_for_your_mental_health,
    which_of_these_would_you_be_interested_in_to_help_you_quit_using_tobacco_products_select_all_that_apply,
    which_statement_best_describes_your_overall_use_of_tobacco_products_select_one
    
  ) %>% 
  transmute(
    age_range = str_remove_all(what_is_your_age, pattern = "years old"),
    race_ethnicity = what_is_your_racial_and_ethnic_category_select_one_selected_choice,
    sexual_orientation = what_best_describes_your_sexual_orientation_select_one_selected_choice,
    identify_as_intersex = do_you_identify_as_intersex,
    gender_identity = what_best_describes_your_current_gender_identity_select_one_definitions_agender_denoting_or_relating_to_a_person_who_does_not_have_a_gender_identity_or_identifies_as_gender_neutral_cisgender_a_term_used_to_describe_a_person_whose_gender_ide,
    sexual_orientation = what_best_describes_your_sexual_orientation_select_one_selected_choice,
    
    overall_physical_health = how_would_you_rate_your_overall_physical_health,
    mental_health_barrier = in_the_past_12_months_how_often_has_your_mental_health_status_kept_you_from_doing_your_normal_daily_activities_such_as_work_or_recreation,
    physical_health_barrier = in_the_past_12_months_how_often_has_your_physical_health_status_kept_you_from_doing_your_normal_daily_activities,
    received_physical_screenings = in_the_past_12_months_have_you_received_any_of_these_preventative_screenings_select_all_that_apply,
    
    been_diagnosed = have_you_ever_been_diagnosed_with_any_of_these_conditions_select_all_that_apply,
    
    
    important_issues_top5 = please_check_what_you_believe_are_the_five_most_important_policy_priorities_affecting_non_binary_transgender_intersex_and_other_gender_diverse_people_in_the_u_s_select_up_to_five_that_are_a_priority,
    BlackLivesMatter_actions_taken = what_actions_have_you_taken_because_of_the_black_lives_matter_movement_select_all_that_apply_selected_choice,
    public_health_crisis_racism = racism_is_a_public_health_crisis,
    police_interaction_experience = which_of_the_following_experiences_have_you_had_in_your_interaction_with_the_police_select_all_that_apply,
    seeking_police_help_comfort_level =  how_comfortable_do_you_feel_seeking_help_from_the_police,
    
    virally_supressed_undetectable = have_you_been_virally_suppressed_undetectable_for_the_past_12_months_or_longer,
    ever_taken_post_exposure_prophylaxis  = have_you_ever_taken_post_exposure_prophylaxis_pep_pep_is_a_medicine_to_prevent_hiv_after_a_possible_exposure_pep_should_be_used_only_in_emergency_situations_and_must_be_started_within_72_hours_after_a_recent_possible_exposure_to_hiv_if_yes_select_y,
    HIV_medical_appointment_went =  in_the_past_12_months_did_you_go_to_an_hiv_medical_appointment_get_an_hiv_medication_prescription_or_have_hiv_labs_done,
    
    attempted_take_own_life =  have_you_ever_attempted_to_take_your_own_life,
    
    worried_about_food = have_you_experienced_the_following_within_the_past_12_months_i_worried_my_food_would_run_out_before_i_received_money_to_buy_more,
    food_money_worries = have_you_experienced_the_following_within_the_past_12_months_the_food_i_bought_didnt_last_and_i_didnt_have_enough_money_to_purchase_more,
    
    needed_bank_loan = have_you_needed_a_bank_loan_in_the_last_12_months,
    needed_benefits_assistance =  have_you_or_a_member_of_your_family_needed_and_applied_for_public_benefits_or_private_assistance_while_living_in_austin,
    
    adopt_have_child_plan = in_the_next_12_months_are_you_planning_to_have_or_adopt_a_child_select_one,
    
    sex_work_activities = in_the_past_12_months_have_you_done_any_of_the_following_relating_to_sex_work_select_all_that_apply,
    reduce_STI_HIV_risk = in_the_past_12_months_have_you_done_any_of_the_following_to_reduce_your_risk_of_getting_an_sti_or_hiv_from_sexual_activity_select_all_that_apply,
    
    injected_recreational_drugs = in_the_past_12_months_have_you_ever_injected_any_drugs_for_recreational_purposes,
    sought_help_substance_issues =  in_the_past_12_months_have_you_sought_help_for_substance_use_issues_from_any_of_the_following_select_all_that_apply_selected_choice,
    used_substances = in_the_past_12_months_have_you_used_any_of_these_substances_select_all_that_apply_selected_choice,
    
    sex_partners = in_the_past_12_months_how_many_sexual_partners_have_you_had,
    
    sexual_activity_used = in_the_past_12_months_which_of_the_following_have_you_used_when_engaging_in_sexual_activity_select_all_that_apply,
    
    # 30 days
    select_experience_30days = in_the_past_30_days_did_you_experience_any_of_these_select_all_that_apply,
    tobacco_products_30days = in_the_past_30_days_have_you_used_any_of_these_tobacco_products_select_all_that_apply,
    alcohol_drinks_30days = in_the_past_30_days_how_many_days_did_you_have_a_drink_containing_alcohol,
    alchohol_drinks_3plus_30days = in_the_past_30_days_how_many_days_did_you_have_3_or_more_drinks_containing_alcohol_on_one_occasion,
    marijuana_use_30days = in_the_past_30_days_how_many_days_did_you_use_marijuana,
    Rx_non_medical_30days = in_the_past_30_days_how_many_days_did_you_use_prescription_drugs_for_recreational_non_medical_use,
    substance_use_30days = in_the_past_30_days_how_many_days_did_you_use_these_substances,
    quit_tobacco_interest = which_of_these_would_you_be_interested_in_to_help_you_quit_using_tobacco_products_select_all_that_apply,
    tobacco_use = which_statement_best_describes_your_overall_use_of_tobacco_products_select_one,
    
    # -
    friends_use_tobacco = which_best_describes_how_many_of_your_closest_friends_use_tobacco_products,
    HIV_testing_frequency = which_best_describes_how_often_you_get_tested_for_hiv_select_one,
    STI_testing_frequency =  which_best_describes_how_often_you_get_tested_for_st_is_select_one,
    condoms_dental_dam_frequency = which_best_describes_how_often_you_have_used_condoms_or_dental_dams_in_the_past_12_months,
    social_worker_therapist_frequency = which_best_describes_how_often_you_see_a_counselor_social_worker_or_psychologist_for_your_mental_health
    
    
  )

head(df2)
write_csv(df2, "LGBTQ-Survey-part2.csv" )

df3 = df %>% 
  select(
    what_is_your_age, 
    what_is_your_racial_and_ethnic_category_select_one_selected_choice,
    what_best_describes_your_sexual_orientation_select_one_selected_choice,
    do_you_identify_as_intersex,
    what_best_describes_your_current_gender_identity_select_one_definitions_agender_denoting_or_relating_to_a_person_who_does_not_have_a_gender_identity_or_identifies_as_gender_neutral_cisgender_a_term_used_to_describe_a_person_whose_gender_ide,
    what_best_describes_your_sexual_orientation_select_one_selected_choice,
    
    
    # -
    how_often_have_you_shared_needles_or_injection_equipment,
    how_long_have_you_been_in_recovery,
    
    how_would_you_rate_your_overall_mental_health_prior_to_the_pandemic,
    how_would_you_rate_your_overall_mental_health_since_the_pandemic,
    how_would_you_rate_your_emotional_wellness_emotional_wellnessa_refers_to_a_measure_of_our_happinessa_anda_satisfaction_with_ourselvesa_anda_our_lives,
    how_would_you_rate_your_spiritual_wellness_spiritual_wellnessa_acknowledges_our_search_for_deeper_meaning_in_lifea_anda_is_reflected_when_our_actions_become_more_consistent_with_our_beliefsa_anda_values,
   
    
    how_positive_do_you_feel_about_the_future,
    how_much_confidence_do_you_have_in_yourself,
    how_worried_do_you_feel,
    how_long_have_you_been_living_with_hiv,
    how_comfortable_is_the_place_where_you_live,
    how_healthy_is_the_environment_around_place_where_you_live,
    how_many_of_your_friends_are_lgbtqia,
    how_much_do_you_worry_about_money,
    how_satisfied_are_you_with_the_quality_of_your_life,
    how_much_do_you_enjoy_life,
    # how_strongly_would_you_agree_with_the_following_statement_this_information_will_be_helpful_to_austins_lgbtqia_community,
    
    # --
    # how_available_to_you_is_the_information_and_learning_opportunities_you_need_in_your_day_to_day_life,
    # how_satisfied_are_you_overall_with_public_services_and_benefits_in_austin,
    # how_would_you_rate_the_quality_of_social_services_available_to_you,
    # how_satisfied_are_you_with_the_following_local_public_services_public_schools,
    # how_satisfied_are_you_with_the_following_local_public_services_police_department,
    # how_satisfied_are_you_with_the_following_local_public_services_fire_department,
    # how_satisfied_are_you_with_the_following_local_public_services_public_transportation,
    # how_satisfied_are_you_with_the_following_local_public_services_parks_and_recreation,
    # how_satisfied_are_you_with_the_following_local_public_services_sanitation,
    # how_satisfied_are_you_with_the_following_local_public_services_libraries,
    # how_satisfied_are_you_with_the_following_local_public_services_street_cleaning,
    # how_satisfied_are_you_with_the_following_local_public_services_recycling,
    # how_satisfied_are_you_with_the_following_local_public_services_traffic_management,
    
    #---
    what_kind_of_homelessness_did_you_most_recently_experience_select_all_that_apply_selected_choice,
    what_percentage_of_your_monthly_income_is_spent_on_housing,
    what_best_describes_your_current_relationship_status_select_one_selected_choice,
    what_faith_are_you_currently_practicing_if_any,
    what_best_describes_your_current_employment_status_select_all_that_apply_selected_choice,
    what_is_your_personal_annual_income_enter_only_your_own_income_not_household_income_since_others_in_your_household_may_also_take_this_survey,
    what_is_the_highest_level_of_education_you_have_completed_select_one,
    # what_quality_of_life_attributes_are_important_to_you_rank_the_following_attributes_by_moving_the_entries_from_most_important_at_the_top_of_the_list_1_to_least_important_at_the_bottom_of_the_list_11_you_can_move_the_entries_by_clicking_and_holding_th
    

    # ----
    to_what_extent_do_you_feel_your_life_to_be_meaningful,
    to_what_extent_do_you_have_opportunities_for_acquiring_the_education_that_you_feel_you_need,
    in_the_past_5_years_have_you_ever_been_homeless_select_one,
    
    
    # -------
    
    # do_any_of_the_following_apply_to_the_people_in_your_social_support_system_select_all_that_apply_biological_family_or_relative_s,
    # do_any_of_the_following_apply_to_the_people_in_your_social_support_system_select_all_that_apply_chosen_family_and_friends,
    # do_any_of_the_following_apply_to_the_people_in_your_social_support_system_select_all_that_apply_children,
    # do_any_of_the_following_apply_to_the_people_in_your_social_support_system_select_all_that_apply_community_group,
    # do_any_of_the_following_apply_to_the_people_in_your_social_support_system_select_all_that_apply_neighbors,
    # do_any_of_the_following_apply_to_the_people_in_your_social_support_system_select_all_that_apply_classmates,
    # do_any_of_the_following_apply_to_the_people_in_your_social_support_system_select_all_that_apply_co_workers,
    # do_any_of_the_following_apply_to_the_people_in_your_social_support_system_select_all_that_apply_counselor_therapist,
    # do_any_of_the_following_apply_to_the_people_in_your_social_support_system_select_all_that_apply_other_please_specify,
    # do_any_of_the_following_apply_to_the_people_in_your_social_support_system_select_all_that_apply_paid_assistance,
    # do_any_of_the_following_apply_to_the_people_in_your_social_support_system_select_all_that_apply_spouse_partner_or_significant_other,
    # do_any_of_the_following_apply_to_the_people_in_your_social_support_system_select_all_that_apply_support_group,
    # do_any_of_the_following_apply_to_the_people_in_your_social_support_system_select_all_that_apply_teachers_educators,
    # 
    
    
    # ====
    do_you_have_any_of_the_following_select_all_that_apply,
    do_you_have_any_physical_disabilities_any_limitation_on_a_persons_physical_functioning_mobility_dexterity_or_stamina_is_counted_this_includes_cerebral_palsy_cp_epilepsy_any_cancer_alzheimera_t_ms_cystic_fibrosis_cf_multiple_sclerosis_ms,
    do_you_have_any_diagnosed_neurodivergence_select_all_that_apply_selected_choice,
    
    # do_you_know_someone_in_austin_that_has_ever_experienced_physical_threat_or_attack_because_they_were_lgbtqia_select_all_that_apply,
    do_you_have_a_partner_spouse_or_significant_other_living_with_hiv,
    do_you_feel_a_sense_of_belonging_and_acceptance_with_or_at_the_following_select_all_that_apply_selected_choice,
    
    do_you_regularly_attend_physically_or_virtually_services_at_an_austin_area_faith_community,
    do_you_have_any_financial_difficulties,
    # do_you_believe_austin_offers_equal_employment_opportunities_to_most_or_all_of_its_residents,
    does_your_partner_spouse_or_significant_other_currently_use_tobacco_products,
    # does_austin_have_anti_poverty_programs_and_policies,

  ) %>% 
  transmute(
    age_range = str_remove_all(what_is_your_age, pattern = "years old"),
    race_ethnicity = what_is_your_racial_and_ethnic_category_select_one_selected_choice,
    sexual_orientation = what_best_describes_your_sexual_orientation_select_one_selected_choice,
    identify_as_intersex = do_you_identify_as_intersex,
    gender_identity = what_best_describes_your_current_gender_identity_select_one_definitions_agender_denoting_or_relating_to_a_person_who_does_not_have_a_gender_identity_or_identifies_as_gender_neutral_cisgender_a_term_used_to_describe_a_person_whose_gender_ide,
    sexual_orientation = what_best_describes_your_sexual_orientation_select_one_selected_choice,
    
    LGBTQIA_friends = how_many_of_your_friends_are_lgbtqia,
    relationship_status = what_best_describes_your_current_relationship_status_select_one_selected_choice,
    faith_practice = what_faith_are_you_currently_practicing_if_any,
    faith_service_attendance = do_you_regularly_attend_physically_or_virtually_services_at_an_austin_area_faith_community,
    
    financial_difficulties = do_you_have_any_financial_difficulties,
    employment_status = what_best_describes_your_current_employment_status_select_all_that_apply_selected_choice,
    personal_annual_income =  what_is_your_personal_annual_income_enter_only_your_own_income_not_household_income_since_others_in_your_household_may_also_take_this_survey,
    educational_level = what_is_the_highest_level_of_education_you_have_completed_select_one,
    education_acquisition  = to_what_extent_do_you_have_opportunities_for_acquiring_the_education_that_you_feel_you_need,
    
    # -
    shared_needles_frequency = how_often_have_you_shared_needles_or_injection_equipment,
    in_recovery_duration = how_long_have_you_been_in_recovery,
    
    # rate
    mental_health_before_pandemic = how_would_you_rate_your_overall_mental_health_prior_to_the_pandemic,
    mental_health_since_pandemic =  how_would_you_rate_your_overall_mental_health_since_the_pandemic,
    emotional_wellness  = how_would_you_rate_your_emotional_wellness_emotional_wellnessa_refers_to_a_measure_of_our_happinessa_anda_satisfaction_with_ourselvesa_anda_our_lives,
    spiritual_wellness  = how_would_you_rate_your_spiritual_wellness_spiritual_wellnessa_acknowledges_our_search_for_deeper_meaning_in_lifea_anda_is_reflected_when_our_actions_become_more_consistent_with_our_beliefsa_anda_values,
    
    # how
    future_how_positive =  how_positive_do_you_feel_about_the_future,
    self_confidence = how_much_confidence_do_you_have_in_yourself,
    worried_level = how_worried_do_you_feel,
    comfortable_housing = how_comfortable_is_the_place_where_you_live,
    living_environment = how_healthy_is_the_environment_around_place_where_you_live,
    
    living_with_HIV = how_long_have_you_been_living_with_hiv,
    partner_with_HIV = do_you_have_a_partner_spouse_or_significant_other_living_with_hiv,
    worried_about_money = how_much_do_you_worry_about_money,
    life_satisfaction = how_satisfied_are_you_with_the_quality_of_your_life,
    life_enjoyment = how_much_do_you_enjoy_life,
    life_meaningful = to_what_extent_do_you_feel_your_life_to_be_meaningful,
    
    # ---
    homelessness_type = what_kind_of_homelessness_did_you_most_recently_experience_select_all_that_apply_selected_choice,
    housing_percentage_income = what_percentage_of_your_monthly_income_is_spent_on_housing,
    homeless_past_5yrs = in_the_past_5_years_have_you_ever_been_homeless_select_one,
    
    
    have_any_medical_insurance  = do_you_have_any_of_the_following_select_all_that_apply,
    physical_disability_dexterity_etc = do_you_have_any_physical_disabilities_any_limitation_on_a_persons_physical_functioning_mobility_dexterity_or_stamina_is_counted_this_includes_cerebral_palsy_cp_epilepsy_any_cancer_alzheimera_t_ms_cystic_fibrosis_cf_multiple_sclerosis_ms,
    neurodivergence_diagnosis = do_you_have_any_diagnosed_neurodivergence_select_all_that_apply_selected_choice,
    
    feel_acceptance_belonging = do_you_feel_a_sense_of_belonging_and_acceptance_with_or_at_the_following_select_all_that_apply_selected_choice,
    partner_uses_tobacco = does_your_partner_spouse_or_significant_other_currently_use_tobacco_products,
    
    
  )

# head(df3)
# 
# write_csv(df3, "LGBTQ-Survey-part-3.csv" )
# 
# 
# 
# 
# 
# three %>% 
#   select( shared_needles_frequency  ) %>%  distinct()










# -------------------------------------------------------------------------

# one = read_csv('2022-05-21/LGBTQ-Survey-part1.csv')
# head(one)
# 
# one %>% 
#   select(     ) # << 
# 
# # 
# two = read_csv('2022-05-21/LGBTQ-Survey-part2.csv')
# head(two)
# 
# two %>% 
#   select( HIV_testing_frequency  ) %>%  distinct()
# 
# # 
# 
# 
# 
# three = read_csv('2022-05-21/LGBTQ-Survey-part3.csv')
# head(three)




# fra-EU ------------------------------------------------------------------

library(tidyverse)
library(janitor)

# target group:  All, lesbian women, gay men, bisexual women, bisexual men, trans people, intersex
# filter : All, age, education, employment, openness about being LGBTI, partner, place of residence, trans subgroups



df = read_csv('~/Downloads/2022-06-03-csv_exportSurveyQuestion-LGBTI-AllSubset-0--All-DEXavoid_hands-EN-0--All.csv', skip= 4) %>% clean_names()
glimpse(df)




