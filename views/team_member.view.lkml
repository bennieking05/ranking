view: team_member {
  sql_table_name: www_kanarys_com.team_member ;;
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

  dimension: function {
    type: string
    sql: ${TABLE}.function ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
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
    drill_fields: [id, name, image_name, image_original_name]
  }
}
