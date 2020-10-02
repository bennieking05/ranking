view: social_group_issue {
  sql_table_name: www_kanarys_com.social_group_issue ;;
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
    drill_fields: [id, name, article_social_group_issue.count, user_social_group_issue.count]
  }
}
