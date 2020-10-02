view: review_review_tag {
  sql_table_name: www_kanarys_com.review_review_tag ;;

  dimension: review_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.review_id ;;
  }

  dimension: review_tag_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.review_tag_id ;;
  }

  measure: count {
    type: count
    drill_fields: [review.id, review_tag.id]
  }
}
