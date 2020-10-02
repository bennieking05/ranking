view: complaint_type {
  sql_table_name: www_kanarys_com.complaint_type ;;
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
    drill_fields: [id, name, eeoc_feed_complaint_type.count]
  }
}
