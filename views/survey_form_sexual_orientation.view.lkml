view: survey_form_sexual_orientation {
  sql_table_name: www_kanarys_com.survey_form_sexual_orientation ;;

  dimension: sexual_orientation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sexual_orientation_id ;;
  }

  dimension: survey_form_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_form_id ;;
  }

  measure: count {
    type: count
    drill_fields: [survey_form.id, sexual_orientation.id, sexual_orientation.name]
  }
}
