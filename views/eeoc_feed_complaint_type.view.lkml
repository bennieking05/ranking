view: eeoc_feed_complaint_type {
  sql_table_name: www_kanarys_com.eeoc_feed_complaint_type ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: complaint_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.complaint_type_id ;;
  }

  dimension: eeoc_feed_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.eeoc_feed_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, eeoc_feed.id, complaint_type.id, complaint_type.name]
  }
}
