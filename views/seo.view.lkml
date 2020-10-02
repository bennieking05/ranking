view: seo {
  sql_table_name: www_kanarys_com.seo ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: fb_description {
    type: string
    sql: ${TABLE}.fb_description ;;
  }

  dimension: fb_image {
    type: string
    sql: ${TABLE}.fb_image ;;
  }

  dimension: fb_title {
    type: string
    sql: ${TABLE}.fb_title ;;
  }

  dimension: fb_type {
    type: string
    sql: ${TABLE}.fb_type ;;
  }

  dimension: gg_description {
    type: string
    sql: ${TABLE}.gg_description ;;
  }

  dimension: gg_image {
    type: string
    sql: ${TABLE}.gg_image ;;
  }

  dimension: gg_title {
    type: string
    sql: ${TABLE}.gg_title ;;
  }

  dimension: keywords {
    type: string
    sql: ${TABLE}.keywords ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: robots {
    type: string
    sql: ${TABLE}.robots ;;
  }

  dimension: route {
    type: string
    sql: ${TABLE}.route ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: tw_description {
    type: string
    sql: ${TABLE}.tw_description ;;
  }

  dimension: tw_image {
    type: string
    sql: ${TABLE}.tw_image ;;
  }

  dimension: tw_title {
    type: string
    sql: ${TABLE}.tw_title ;;
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
    drill_fields: [id]
  }
}
