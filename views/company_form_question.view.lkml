view: company_form_question {
  sql_table_name: www_kanarys_com.company_form_question ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: form_group_id {
    type: number
    sql: ${TABLE}.form_group_id ;;
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

  dimension: slider_label_max {
    type: string
    sql: ${TABLE}.slider_label_max ;;
  }

  dimension: slider_label_min {
    type: string
    sql: ${TABLE}.slider_label_min ;;
  }

  dimension: slider_nb_graduations {
    type: number
    sql: ${TABLE}.slider_nb_graduations ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
