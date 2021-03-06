view: survey_contribution_question {
  sql_table_name: www_kanarys_com.survey_contribution_question ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: contribution_step_id {
    type: number
    sql: ${TABLE}.contribution_step_id ;;
  }

  dimension: form_answer_id {
    type: number
    sql: ${TABLE}.form_answer_id ;;
  }

  dimension: form_question_id {
    type: number
    sql: ${TABLE}.form_question_id ;;
  }

  dimension: other {
    type: string
    sql: ${TABLE}.other ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, survey_contribution_question_survey_form_answer.count]
  }
}
