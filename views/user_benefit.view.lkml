view: user_benefit {
  sql_table_name: www_kanarys_com.user_benefit ;;

  dimension: benefit_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.benefit_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      user.id,
      user.first_name,
      user.last_name,
      user.image_name,
      user.image_original_name,
      benefit.id,
      benefit.name
    ]
  }
}
