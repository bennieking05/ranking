view: article_benefit {
  sql_table_name: www_kanarys_com.article_benefit ;;

  dimension: article_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.article_id ;;
  }

  dimension: benefit_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.benefit_id ;;
  }

  measure: count {
    type: count
    drill_fields: [article.id, article.image_name, article.image_original_name, benefit.id, benefit.name]
  }
}
