view: user_industry {
  sql_table_name: www_kanarys_com.user_industry ;;

  dimension: industry_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.industry_id ;;
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
      industry.id,
      industry.name
    ]
  }
}
