view: survey_form_question {
  sql_table_name: www_kanarys_com.survey_form_question ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: demographics_type {
    type: string
    sql: ${TABLE}.demographics_type ;;
  }

  dimension: form_step_id {
    type: number
    sql: ${TABLE}.form_step_id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: placeholder {
    type: string
    sql: ${TABLE}.placeholder ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: rating_activated {
    type: yesno
    sql: ${TABLE}.rating_activated ;;
  }

  dimension: slider_label_max {
    type: string
    sql: ${TABLE}.slider_label_max ;;
  }

  dimension: slider_label_min {
    type: string
    sql: ${TABLE}.slider_label_min ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
