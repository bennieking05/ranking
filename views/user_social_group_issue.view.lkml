view: user_social_group_issue {
  sql_table_name: www_kanarys_com.user_social_group_issue ;;

  dimension: social_group_issue_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.social_group_issue_id ;;
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
      social_group_issue.id,
      social_group_issue.name
    ]
  }
}
