view: survey_contribution_ranking_answer {
  sql_table_name: www_kanarys_com.survey_contribution_ranking_answer ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: contribution_question_id {
    type: number
    sql: ${TABLE}.contribution_question_id ;;
  }

  dimension: form_answer_id {
    type: number
    sql: ${TABLE}.form_answer_id ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
  measure: position_avg {
    type: average
    sql: ${TABLE}.position ;;
  }
}
