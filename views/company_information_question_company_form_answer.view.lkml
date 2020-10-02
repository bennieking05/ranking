view: company_information_question_company_form_answer {
  sql_table_name: www_kanarys_com.company_information_question_company_form_answer ;;

  dimension: company_form_answer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_form_answer_id ;;
  }

  dimension: company_information_question_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_information_question_id ;;
  }

  measure: count {
    type: count
    drill_fields: [company_information_question.id, company_form_answer.id]
  }
}
