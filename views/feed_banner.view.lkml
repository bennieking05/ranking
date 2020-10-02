view: feed_banner {
  sql_table_name: www_kanarys_com.feed_banner ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: cta_label {
    type: string
    sql: ${TABLE}.cta_label ;;
  }

  dimension: cta_url {
    type: string
    sql: ${TABLE}.cta_url ;;
  }

  dimension: excerpt {
    type: string
    sql: ${TABLE}.excerpt ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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

  dimension_group: visible_until {
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
    sql: ${TABLE}.visible_until ;;
  }

  measure: count {
    type: count
    drill_fields: [id, feed_banner_user.count]
  }
}
