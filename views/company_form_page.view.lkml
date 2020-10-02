view: company_form_page {
  sql_table_name: www_kanarys_com.company_form_page ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: subscription_required {
    type: yesno
    sql: ${TABLE}.subscription_required ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
