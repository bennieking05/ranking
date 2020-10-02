view: eeoc_feed_company {
  sql_table_name: www_kanarys_com.eeoc_feed_company ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }

  dimension: eeoc_feed_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.eeoc_feed_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      eeoc_feed.id,
      company.id,
      company.name,
      company.cover_name,
      company.cover_original_name,
      company.logo_name,
      company.logo_original_name,
      company.video_uploaded_name,
      company.video_uploaded_original_name
    ]
  }
}
