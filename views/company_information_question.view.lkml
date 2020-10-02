view: company_information_question {
  sql_table_name: www_kanarys_com.company_information_question ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: affinity_groups {
    type: yesno
    sql: ${TABLE}.affinity_groups ;;
  }

  dimension: affinity_groups_champion {
    type: yesno
    sql: ${TABLE}.affinity_groups_champion ;;
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

  dimension: days_off_type {
    type: string
    sql: ${TABLE}.days_off_type ;;
  }

  dimension: form_answer_id {
    type: number
    sql: ${TABLE}.form_answer_id ;;
  }

  dimension: form_question_id {
    type: number
    sql: ${TABLE}.form_question_id ;;
  }

  dimension: information_group_id {
    type: number
    sql: ${TABLE}.information_group_id ;;
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

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, company_information_question_company_form_answer.count]
  }
}
