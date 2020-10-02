view: survey_form_religion {
  sql_table_name: www_kanarys_com.survey_form_religion ;;

  dimension: religion_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.religion_id ;;
  }

  dimension: survey_form_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_form_id ;;
  }

  measure: count {
    type: count
    drill_fields: [survey_form.id, religion.id, religion.name]
  }
}
