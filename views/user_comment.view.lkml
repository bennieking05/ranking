view: user_comment {
  sql_table_name: www_kanarys_com.user_comment ;;
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

  dimension: blocked {
    type: yesno
    sql: ${TABLE}.blocked ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
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

  dimension: flagged {
    type: yesno
    sql: ${TABLE}.flagged ;;
  }

  dimension: is_anonymous {
    type: yesno
    sql: ${TABLE}.is_anonymous ;;
  }

  dimension: review_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.review_id ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
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
      article.id,
      article.image_name,
      article.image_original_name,
      user.id,
      user.first_name,
      user.last_name,
      user.image_name,
      user.image_original_name,
      review.id,
      flagged.count
    ]
  }
}
