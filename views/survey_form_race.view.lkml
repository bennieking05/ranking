view: survey_form_race {
  sql_table_name: www_kanarys_com.survey_form_race ;;

  dimension: race_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.race_id ;;
  }

  dimension: survey_form_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_form_id ;;
  }

  measure: count {
    type: count
    drill_fields: [survey_form.id, race.id, race.name]
  }
}
