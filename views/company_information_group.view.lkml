view: company_information_group {
  sql_table_name: www_kanarys_com.company_information_group ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: form_group_id {
    type: number
    sql: ${TABLE}.form_group_id ;;
  }

  dimension: information_page_id {
    type: number
    sql: ${TABLE}.information_page_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
