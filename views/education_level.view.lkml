view: education_level {
  sql_table_name: www_kanarys_com.education_level ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      company_concern.count,
      company_sentiment.count,
      user.count,
      user_click_company.count,
      user_video_company.count,
      user_visit_company.count
    ]
  }
}
