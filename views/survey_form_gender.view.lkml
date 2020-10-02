view: survey_form_gender {
  sql_table_name: www_kanarys_com.survey_form_gender ;;

  dimension: gender_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.gender_id ;;
  }

  dimension: survey_form_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_form_id ;;
  }

  measure: count {
    type: count
    drill_fields: [survey_form.id, gender.id, gender.name]
  }
}
