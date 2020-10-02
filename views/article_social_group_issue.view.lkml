view: article_social_group_issue {
  sql_table_name: www_kanarys_com.article_social_group_issue ;;

  dimension: article_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.article_id ;;
  }

  dimension: social_group_issue_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.social_group_issue_id ;;
  }

  measure: count {
    type: count
    drill_fields: [article.id, article.image_name, article.image_original_name, social_group_issue.id, social_group_issue.name]
  }
}
