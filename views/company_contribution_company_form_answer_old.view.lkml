view: company_contribution_company_form_answer_old {
  sql_table_name: www_kanarys_com.company_contribution_company_form_answer_old ;;

  dimension: company_contribution_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_contribution_id ;;
  }

  dimension: company_form_answer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_form_answer_id ;;
  }

  measure: count {
    type: count
    drill_fields: [company_contribution.id, company_form_answer.id]
  }
}
