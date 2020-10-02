view: report_metric {
  sql_table_name: www_kanarys_com.report_metric ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: annual_report_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.annual_report_id ;;
  }

  dimension: report_gender_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.report_gender_id ;;
  }

  dimension: report_job_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.report_job_category_id ;;
  }

  dimension: report_race_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.report_race_id ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      report_job_category.id,
      report_job_category.name,
      report_gender.id,
      report_gender.name,
      report_race.id,
      report_race.name,
      annual_report.id
    ]
  }
}
