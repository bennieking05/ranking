view: survey_contribution_step {
  sql_table_name: www_kanarys_com.survey_contribution_step ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: contribution_id {
    type: number
    sql: ${TABLE}.contribution_id ;;
  }

  dimension: form_step_id {
    type: number
    sql: ${TABLE}.form_step_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
