view: survey_contribution_question_survey_form_answer {
  sql_table_name: www_kanarys_com.survey_contribution_question_survey_form_answer ;;

  dimension: survey_contribution_question_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_contribution_question_id ;;
  }

  dimension: survey_form_answer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_form_answer_id ;;
  }

  measure: count {
    type: count
    drill_fields: [survey_contribution_question.id, survey_form_answer.id]
  }
}
