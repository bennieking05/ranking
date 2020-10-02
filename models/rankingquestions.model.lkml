connection: "sandbox"

# include all the views
include: "/views/**/*.view"

datagroup: rankingquestions_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rankingquestions_default_datagroup

explore:survey_contribution_ranking_answer  {
  label: "Employees Value Most"
  join: survey_form_answer {
    type:  left_outer
    sql_on: ${survey_contribution_ranking_answer.form_answer_id} = ${survey_form_answer.id} ;;
    relationship: many_to_many
  }
  join: survey_contribution_question {
    type: left_outer
    sql_on: ${survey_contribution_question.form_answer_id} = ${survey_form_answer.id} ;;
    relationship: one_to_many
  }
  join: survey_form_question {
    type: left_outer
    sql_on: ${survey_contribution_question.form_question_id} = ${survey_form_question.id};;
    relationship:many_to_many

  }
  join: survey_contribution_step {
    type: left_outer
    sql_on: ${survey_contribution_question.contribution_step_id} = ${survey_contribution_step.id};;
    relationship: one_to_one
  }
  join:  survey_contribution{
    type:  left_outer
    sql_on: ${survey_contribution_step.contribution_id} = ${survey_contribution.id};;
    relationship: many_to_one
  }
  join: company {
    type:  left_outer
    sql_on: ${survey_contribution.company_id} = ${company.id} ;;
    relationship: many_to_one
  }
}
# explore: admin {
#   join: user {
#     type: left_outer
#     sql_on: ${admin.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${admin.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: annual_report {
#   join: company {
#     type: left_outer
#     sql_on: ${annual_report.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: annual_report_upload {
#   join: company {
#     type: left_outer
#     sql_on: ${annual_report_upload.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: article {
#   join: company {
#     type: left_outer
#     sql_on: ${article.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: article_benefit {
#   join: article {
#     type: left_outer
#     sql_on: ${article_benefit.article_id} = ${article.id} ;;
#     relationship: many_to_one
#   }

#   join: benefit {
#     type: left_outer
#     sql_on: ${article_benefit.benefit_id} = ${benefit.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${article.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: article_social_group_issue {
#   join: article {
#     type: left_outer
#     sql_on: ${article_social_group_issue.article_id} = ${article.id} ;;
#     relationship: many_to_one
#   }

#   join: social_group_issue {
#     type: left_outer
#     sql_on: ${article_social_group_issue.social_group_issue_id} = ${social_group_issue.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${article.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: badge {}

# explore: benefit {}

# explore: black_list {}

# explore: city {}

# explore: company {
#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: company_city {
#   join: company {
#     type: left_outer
#     sql_on: ${company_city.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: city {
#     type: left_outer
#     sql_on: ${company_city.city_id} = ${city.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: company_concern {
#   join: user {
#     type: left_outer
#     sql_on: ${company_concern.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${company_concern.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${company_concern.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${company_concern.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${company_concern.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${company_concern.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${company_concern.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: company_contribution {
#   join: user {
#     type: left_outer
#     sql_on: ${company_contribution.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${company_contribution.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: company_contribution_company_form_answer_new {
#   join: company_contribution {
#     type: left_outer
#     sql_on: ${company_contribution_company_form_answer_new.company_contribution_id} = ${company_contribution.id} ;;
#     relationship: many_to_one
#   }

#   join: company_form_answer {
#     type: left_outer
#     sql_on: ${company_contribution_company_form_answer_new.company_form_answer_id} = ${company_form_answer.id} ;;
#     relationship: many_to_one
#   }

#   join: user {
#     type: left_outer
#     sql_on: ${company_contribution.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${company_contribution.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: company_contribution_company_form_answer_old {
#   join: company_contribution {
#     type: left_outer
#     sql_on: ${company_contribution_company_form_answer_old.company_contribution_id} = ${company_contribution.id} ;;
#     relationship: many_to_one
#   }

#   join: company_form_answer {
#     type: left_outer
#     sql_on: ${company_contribution_company_form_answer_old.company_form_answer_id} = ${company_form_answer.id} ;;
#     relationship: many_to_one
#   }

#   join: user {
#     type: left_outer
#     sql_on: ${company_contribution.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${company_contribution.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: company_department {
#   join: company {
#     type: left_outer
#     sql_on: ${company_department.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: department {
#     type: left_outer
#     sql_on: ${company_department.department_id} = ${department.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: company_feed {
#   join: company {
#     type: left_outer
#     sql_on: ${company_feed.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: company_form_answer {}

# explore: company_form_group {}

# explore: company_form_page {}

# explore: company_form_question {}

# explore: company_information_group {}

# explore: company_information_page {
#   join: company {
#     type: left_outer
#     sql_on: ${company_information_page.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: company_information_question {}

# explore: company_information_question_company_form_answer {
#   join: company_information_question {
#     type: left_outer
#     sql_on: ${company_information_question_company_form_answer.company_information_question_id} = ${company_information_question.id} ;;
#     relationship: many_to_one
#   }

#   join: company_form_answer {
#     type: left_outer
#     sql_on: ${company_information_question_company_form_answer.company_form_answer_id} = ${company_form_answer.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: company_sentiment {
#   join: user {
#     type: left_outer
#     sql_on: ${company_sentiment.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${company_sentiment.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${company_sentiment.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${company_sentiment.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${company_sentiment.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${company_sentiment.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${company_sentiment.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: company_survey_form {
#   join: company {
#     type: left_outer
#     sql_on: ${company_survey_form.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: survey_form {
#     type: left_outer
#     sql_on: ${company_survey_form.survey_form_id} = ${survey_form.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }

#   join: survey_company {
#     type: left_outer
#     sql_on: ${survey_form.survey_company_id} = ${survey_company.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: complaint_type {}

# explore: contact {}

# explore: contract {
#   join: company {
#     type: left_outer
#     sql_on: ${contract.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: contract_request {
#   join: user {
#     type: left_outer
#     sql_on: ${contract_request.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${contract_request.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: credit_card {
#   join: company {
#     type: left_outer
#     sql_on: ${credit_card.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: department {}

# explore: domain {
#   join: company {
#     type: left_outer
#     sql_on: ${domain.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: education_level {}

# explore: eeoc_feed {}

# explore: eeoc_feed_company {
#   join: eeoc_feed {
#     type: left_outer
#     sql_on: ${eeoc_feed_company.eeoc_feed_id} = ${eeoc_feed.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${eeoc_feed_company.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: eeoc_feed_complaint_type {
#   join: eeoc_feed {
#     type: left_outer
#     sql_on: ${eeoc_feed_complaint_type.eeoc_feed_id} = ${eeoc_feed.id} ;;
#     relationship: many_to_one
#   }

#   join: complaint_type {
#     type: left_outer
#     sql_on: ${eeoc_feed_complaint_type.complaint_type_id} = ${complaint_type.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: email {}

# explore: email_sent {
#   join: user {
#     type: left_outer
#     sql_on: ${email_sent.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: employees_range {}

# explore: feed_banner {}

# explore: feed_banner_user {
#   join: feed_banner {
#     type: left_outer
#     sql_on: ${feed_banner_user.feed_banner_id} = ${feed_banner.id} ;;
#     relationship: many_to_one
#   }

#   join: user {
#     type: left_outer
#     sql_on: ${feed_banner_user.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: feed_item {
#   join: company {
#     type: left_outer
#     sql_on: ${feed_item.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: article {
#     type: left_outer
#     sql_on: ${feed_item.article_id} = ${article.id} ;;
#     relationship: many_to_one
#   }

#   join: review {
#     type: left_outer
#     sql_on: ${feed_item.review_id} = ${review.id} ;;
#     relationship: many_to_one
#   }

#   join: annual_report {
#     type: left_outer
#     sql_on: ${feed_item.annual_report_id} = ${annual_report.id} ;;
#     relationship: many_to_one
#   }

#   join: invitation_recipient {
#     type: left_outer
#     sql_on: ${feed_item.invitation_recipient_id} = ${invitation_recipient.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }

#   join: user {
#     type: left_outer
#     sql_on: ${review.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: invitation {
#     type: left_outer
#     sql_on: ${invitation_recipient.invitation_id} = ${invitation.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: feed_rss {}

# explore: flagged {
#   join: user_comment {
#     type: left_outer
#     sql_on: ${flagged.user_comment_id} = ${user_comment.id} ;;
#     relationship: many_to_one
#   }

#   join: review {
#     type: left_outer
#     sql_on: ${flagged.review_id} = ${review.id} ;;
#     relationship: many_to_one
#   }

#   join: user {
#     type: left_outer
#     sql_on: ${flagged.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: article {
#     type: left_outer
#     sql_on: ${user_comment.article_id} = ${article.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${article.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: gender {}

# explore: industry {}

# explore: invitation {
#   join: user {
#     type: left_outer
#     sql_on: ${invitation.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${invitation.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: invitation_recipient {
#   join: invitation {
#     type: left_outer
#     sql_on: ${invitation_recipient.invitation_id} = ${invitation.id} ;;
#     relationship: many_to_one
#   }

#   join: user {
#     type: left_outer
#     sql_on: ${invitation_recipient.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${invitation.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: job {
#   join: company {
#     type: left_outer
#     sql_on: ${job.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${job.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: job_category {}

# explore: migration_versions {}

# explore: newsletter_subscriber {}

# explore: page {}

# explore: page_section {
#   join: page {
#     type: left_outer
#     sql_on: ${page_section.page_id} = ${page.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: pinpoint_campaign {
#   join: survey_company {
#     type: left_outer
#     sql_on: ${pinpoint_campaign.survey_company_id} = ${survey_company.id} ;;
#     relationship: many_to_one
#   }

#   join: department {
#     type: left_outer
#     sql_on: ${pinpoint_campaign.department_id} = ${department.id} ;;
#     relationship: many_to_one
#   }

#   join: city {
#     type: left_outer
#     sql_on: ${pinpoint_campaign.city_id} = ${city.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${survey_company.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: pinpoint_campaign_user {
#   join: pinpoint_campaign {
#     type: left_outer
#     sql_on: ${pinpoint_campaign_user.pinpoint_campaign_id} = ${pinpoint_campaign.id} ;;
#     relationship: many_to_one
#   }

#   join: user {
#     type: left_outer
#     sql_on: ${pinpoint_campaign_user.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: survey_company {
#     type: left_outer
#     sql_on: ${pinpoint_campaign.survey_company_id} = ${survey_company.id} ;;
#     relationship: many_to_one
#   }

#   join: department {
#     type: left_outer
#     sql_on: ${pinpoint_campaign.department_id} = ${department.id} ;;
#     relationship: many_to_one
#   }

#   join: city {
#     type: left_outer
#     sql_on: ${pinpoint_campaign.city_id} = ${city.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${survey_company.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: race {}

# explore: religion {}

# explore: report_gender {}

# explore: report_job_category {}

# explore: report_metric {
#   join: report_job_category {
#     type: left_outer
#     sql_on: ${report_metric.report_job_category_id} = ${report_job_category.id} ;;
#     relationship: many_to_one
#   }

#   join: report_gender {
#     type: left_outer
#     sql_on: ${report_metric.report_gender_id} = ${report_gender.id} ;;
#     relationship: many_to_one
#   }

#   join: report_race {
#     type: left_outer
#     sql_on: ${report_metric.report_race_id} = ${report_race.id} ;;
#     relationship: many_to_one
#   }

#   join: annual_report {
#     type: left_outer
#     sql_on: ${report_metric.annual_report_id} = ${annual_report.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${annual_report.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: report_race {}

# explore: report_total {
#   join: report_job_category {
#     type: left_outer
#     sql_on: ${report_total.report_job_category_id} = ${report_job_category.id} ;;
#     relationship: many_to_one
#   }

#   join: report_gender {
#     type: left_outer
#     sql_on: ${report_total.report_gender_id} = ${report_gender.id} ;;
#     relationship: many_to_one
#   }

#   join: report_race {
#     type: left_outer
#     sql_on: ${report_total.report_race_id} = ${report_race.id} ;;
#     relationship: many_to_one
#   }

#   join: annual_report {
#     type: left_outer
#     sql_on: ${report_total.annual_report_id} = ${annual_report.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${annual_report.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: review {
#   join: company {
#     type: left_outer
#     sql_on: ${review.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: user {
#     type: left_outer
#     sql_on: ${review.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: review_review_tag {
#   join: review {
#     type: left_outer
#     sql_on: ${review_review_tag.review_id} = ${review.id} ;;
#     relationship: many_to_one
#   }

#   join: review_tag {
#     type: left_outer
#     sql_on: ${review_review_tag.review_tag_id} = ${review_tag.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${review.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: user {
#     type: left_outer
#     sql_on: ${review.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: review_tag {}

# explore: salary_range {}

# explore: seo {}

# explore: sexual_orientation {}

# explore: social_group_issue {}

# explore: survey_campaign {}

# explore: survey_campaign_submission {
#   join: survey_campaign {
#     type: left_outer
#     sql_on: ${survey_campaign_submission.survey_campaign_id} = ${survey_campaign.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${survey_campaign_submission.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: user {
#     type: left_outer
#     sql_on: ${survey_campaign_submission.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: survey_company {
#   join: company {
#     type: left_outer
#     sql_on: ${survey_company.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: survey_contribution {
#   join: user {
#     type: left_outer
#     sql_on: ${survey_contribution.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${survey_contribution.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: pinpoint_campaign {
#     type: left_outer
#     sql_on: ${survey_contribution.pinpoint_campaign_id} = ${pinpoint_campaign.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }

#   join: survey_company {
#     type: left_outer
#     sql_on: ${pinpoint_campaign.survey_company_id} = ${survey_company.id} ;;
#     relationship: many_to_one
#   }

#   join: department {
#     type: left_outer
#     sql_on: ${pinpoint_campaign.department_id} = ${department.id} ;;
#     relationship: many_to_one
#   }

#   join: city {
#     type: left_outer
#     sql_on: ${pinpoint_campaign.city_id} = ${city.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: survey_contribution_question {}

# explore: survey_contribution_question_survey_form_answer {
#   join: survey_contribution_question {
#     type: left_outer
#     sql_on: ${survey_contribution_question_survey_form_answer.survey_contribution_question_id} = ${survey_contribution_question.id} ;;
#     relationship: many_to_one
#   }

#   join: survey_form_answer {
#     type: left_outer
#     sql_on: ${survey_contribution_question_survey_form_answer.survey_form_answer_id} = ${survey_form_answer.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: survey_contribution_ranking_answer {}

# explore: survey_contribution_step {}

# explore: survey_form {
#   join: company {
#     type: left_outer
#     sql_on: ${survey_form.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: survey_company {
#     type: left_outer
#     sql_on: ${survey_form.survey_company_id} = ${survey_company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: survey_form_answer {}

# explore: survey_form_gender {
#   join: survey_form {
#     type: left_outer
#     sql_on: ${survey_form_gender.survey_form_id} = ${survey_form.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${survey_form_gender.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${survey_form.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: survey_company {
#     type: left_outer
#     sql_on: ${survey_form.survey_company_id} = ${survey_company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: survey_form_question {}

# explore: survey_form_race {
#   join: survey_form {
#     type: left_outer
#     sql_on: ${survey_form_race.survey_form_id} = ${survey_form.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${survey_form_race.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${survey_form.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: survey_company {
#     type: left_outer
#     sql_on: ${survey_form.survey_company_id} = ${survey_company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: survey_form_religion {
#   join: survey_form {
#     type: left_outer
#     sql_on: ${survey_form_religion.survey_form_id} = ${survey_form.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${survey_form_religion.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${survey_form.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: survey_company {
#     type: left_outer
#     sql_on: ${survey_form.survey_company_id} = ${survey_company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: survey_form_sexual_orientation {
#   join: survey_form {
#     type: left_outer
#     sql_on: ${survey_form_sexual_orientation.survey_form_id} = ${survey_form.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${survey_form_sexual_orientation.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${survey_form.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: survey_company {
#     type: left_outer
#     sql_on: ${survey_form.survey_company_id} = ${survey_company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: survey_form_step {}

# explore: team_member {}

# explore: testimony {}

# explore: tour {}

# explore: tour_step {
#   join: tour {
#     type: left_outer
#     sql_on: ${tour_step.tour_id} = ${tour.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: trusted_by {}

# explore: user {
#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: user_benefit {
#   join: user {
#     type: left_outer
#     sql_on: ${user_benefit.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: benefit {
#     type: left_outer
#     sql_on: ${user_benefit.benefit_id} = ${benefit.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: user_click_company {
#   join: user {
#     type: left_outer
#     sql_on: ${user_click_company.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${user_click_company.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user_click_company.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user_click_company.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user_click_company.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user_click_company.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user_click_company.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: user_comment {
#   join: article {
#     type: left_outer
#     sql_on: ${user_comment.article_id} = ${article.id} ;;
#     relationship: many_to_one
#   }

#   join: user {
#     type: left_outer
#     sql_on: ${user_comment.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: review {
#     type: left_outer
#     sql_on: ${user_comment.review_id} = ${review.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${article.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: user_company {
#   join: user {
#     type: left_outer
#     sql_on: ${user_company.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${user_company.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: user_follow_company {
#   join: user {
#     type: left_outer
#     sql_on: ${user_follow_company.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${user_follow_company.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: user_industry {
#   join: user {
#     type: left_outer
#     sql_on: ${user_industry.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${user_industry.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: user_job {
#   join: user {
#     type: left_outer
#     sql_on: ${user_job.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: user_like {
#   join: user {
#     type: left_outer
#     sql_on: ${user_like.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: article {
#     type: left_outer
#     sql_on: ${user_like.article_id} = ${article.id} ;;
#     relationship: many_to_one
#   }

#   join: review {
#     type: left_outer
#     sql_on: ${user_like.review_id} = ${review.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${article.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: user_share {
#   join: user {
#     type: left_outer
#     sql_on: ${user_share.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: article {
#     type: left_outer
#     sql_on: ${user_share.article_id} = ${article.id} ;;
#     relationship: many_to_one
#   }

#   join: review {
#     type: left_outer
#     sql_on: ${user_share.review_id} = ${review.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${article.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: user_social_group_issue {
#   join: user {
#     type: left_outer
#     sql_on: ${user_social_group_issue.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: social_group_issue {
#     type: left_outer
#     sql_on: ${user_social_group_issue.social_group_issue_id} = ${social_group_issue.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: user_video_company {
#   join: user {
#     type: left_outer
#     sql_on: ${user_video_company.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${user_video_company.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user_video_company.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user_video_company.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user_video_company.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user_video_company.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user_video_company.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: user_visit_company {
#   join: user {
#     type: left_outer
#     sql_on: ${user_visit_company.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${user_visit_company.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user_visit_company.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user_visit_company.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user_visit_company.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user_visit_company.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user_visit_company.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: wandi_easy_admin_plus_user {}

# explore: work_experience {
#   join: salary_range {
#     type: left_outer
#     sql_on: ${work_experience.salary_range_id} = ${salary_range.id} ;;
#     relationship: many_to_one
#   }

#   join: user {
#     type: left_outer
#     sql_on: ${work_experience.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }

#   join: company {
#     type: left_outer
#     sql_on: ${work_experience.company_id} = ${company.id} ;;
#     relationship: many_to_one
#   }

#   join: department {
#     type: left_outer
#     sql_on: ${work_experience.department_id} = ${department.id} ;;
#     relationship: many_to_one
#   }

#   join: city {
#     type: left_outer
#     sql_on: ${work_experience.city_id} = ${city.id} ;;
#     relationship: many_to_one
#   }

#   join: gender {
#     type: left_outer
#     sql_on: ${user.gender_id} = ${gender.id} ;;
#     relationship: many_to_one
#   }

#   join: race {
#     type: left_outer
#     sql_on: ${user.race_id} = ${race.id} ;;
#     relationship: many_to_one
#   }

#   join: sexual_orientation {
#     type: left_outer
#     sql_on: ${user.sexual_orientation_id} = ${sexual_orientation.id} ;;
#     relationship: many_to_one
#   }

#   join: religion {
#     type: left_outer
#     sql_on: ${user.religion_id} = ${religion.id} ;;
#     relationship: many_to_one
#   }

#   join: education_level {
#     type: left_outer
#     sql_on: ${user.education_level_id} = ${education_level.id} ;;
#     relationship: many_to_one
#   }

#   join: badge {
#     type: left_outer
#     sql_on: ${user.badge_id} = ${badge.id} ;;
#     relationship: many_to_one
#   }

#   join: industry {
#     type: left_outer
#     sql_on: ${company.industry_id} = ${industry.id} ;;
#     relationship: many_to_one
#   }

#   join: employees_range {
#     type: left_outer
#     sql_on: ${company.employees_range_id} = ${employees_range.id} ;;
#     relationship: many_to_one
#   }
# }
