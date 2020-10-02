view: feed_item {
  sql_table_name: www_kanarys_com.feed_item ;;
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

  dimension: article_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.article_id ;;
  }

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: form_page_id {
    type: number
    sql: ${TABLE}.form_page_id ;;
  }

  dimension: invitation_recipient_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.invitation_recipient_id ;;
  }

  dimension: review_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.review_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      company.id,
      company.name,
      company.cover_name,
      company.cover_original_name,
      company.logo_name,
      company.logo_original_name,
      company.video_uploaded_name,
      company.video_uploaded_original_name,
      article.id,
      article.image_name,
      article.image_original_name,
      review.id,
      annual_report.id,
      invitation_recipient.id
    ]
  }
}
