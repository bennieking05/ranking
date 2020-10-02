view: feed_banner_user {
  sql_table_name: www_kanarys_com.feed_banner_user ;;

  dimension: feed_banner_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.feed_banner_id ;;
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
      feed_banner.id,
      user.id,
      user.first_name,
      user.last_name,
      user.image_name,
      user.image_original_name
    ]
  }
}
