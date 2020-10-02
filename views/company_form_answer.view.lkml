view: company_form_answer {
  sql_table_name: www_kanarys_com.company_form_answer ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: form_question_id {
    type: number
    sql: ${TABLE}.form_question_id ;;
  }

  dimension: other {
    type: yesno
    sql: ${TABLE}.other ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, company_contribution_company_form_answer_new.count, company_contribution_company_form_answer_old.count, company_information_question_company_form_answer.count]
  }
}
