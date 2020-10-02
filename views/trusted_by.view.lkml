view: trusted_by {
  sql_table_name: www_kanarys_com.trusted_by ;;
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

  dimension: image_dimensions {
    type: string
    sql: ${TABLE}.image_dimensions ;;
  }

  dimension: image_mime_type {
    type: string
    sql: ${TABLE}.image_mime_type ;;
  }

  dimension: image_name {
    type: string
    sql: ${TABLE}.image_name ;;
  }

  dimension: image_original_name {
    type: string
    sql: ${TABLE}.image_original_name ;;
  }

  dimension: image_size {
    type: number
    sql: ${TABLE}.image_size ;;
  }

  dimension: link {
    type: string
    sql: ${TABLE}.link ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
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

  measure: count {
    type: count
    drill_fields: [id, image_name, image_original_name]
  }
}
