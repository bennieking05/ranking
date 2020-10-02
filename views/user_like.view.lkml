view: user_like {
  sql_table_name: www_kanarys_com.user_like ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: article_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.article_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: review_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.review_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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
      id,
      user.id,
      user.first_name,
      user.last_name,
      user.image_name,
      user.image_original_name,
      article.id,
      article.image_name,
      article.image_original_name,
      review.id
    ]
  }
}
