view: testimony {
  sql_table_name: www_kanarys_com.testimony ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: author_company {
    type: string
    sql: ${TABLE}.author_company ;;
  }

  dimension: author_function {
    type: string
    sql: ${TABLE}.author_function ;;
  }

  dimension: author_image_dimensions {
    type: string
    sql: ${TABLE}.author_image_dimensions ;;
  }

  dimension: author_image_mime_type {
    type: string
    sql: ${TABLE}.author_image_mime_type ;;
  }

  dimension: author_image_name {
    type: string
    sql: ${TABLE}.author_image_name ;;
  }

  dimension: author_image_original_name {
    type: string
    sql: ${TABLE}.author_image_original_name ;;
  }

  dimension: author_image_size {
    type: number
    sql: ${TABLE}.author_image_size ;;
  }

  dimension: author_name {
    type: string
    sql: ${TABLE}.author_name ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
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

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
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
    drill_fields: [id, author_name, author_image_name, author_image_original_name]
  }
}
