view: report_gender {
  sql_table_name: www_kanarys_com.report_gender ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: governing_board {
    type: yesno
    sql: ${TABLE}.governing_board ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, report_metric.count, report_total.count]
  }
}
