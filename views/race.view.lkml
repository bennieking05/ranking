view: race {
  sql_table_name: www_kanarys_com.race ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: detail {
    type: string
    sql: ${TABLE}.detail ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: other {
    type: yesno
    sql: ${TABLE}.other ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
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
      survey_form_race.count,
      user.count,
      user_click_company.count,
      user_video_company.count,
      user_visit_company.count
    ]
  }
}
