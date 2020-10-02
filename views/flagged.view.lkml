view: flagged {
  sql_table_name: www_kanarys_com.flagged ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: blacklist_keywords {
    type: string
    sql: ${TABLE}.blacklist_keywords ;;
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

  dimension: flagger_id {
    type: number
    sql: ${TABLE}.flagger_id ;;
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

  dimension: user_comment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_comment_id ;;
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
      user_comment.id,
      review.id,
      user.id,
      user.first_name,
      user.last_name,
      user.image_name,
      user.image_original_name
    ]
  }
}
