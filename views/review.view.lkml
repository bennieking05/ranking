view: review {
  sql_table_name: www_kanarys_com.review ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: average {
    type: number
    sql: ${TABLE}.average ;;
  }

  dimension: benefits_and_resources {
    type: number
    sql: ${TABLE}.benefits_and_resources ;;
  }

  dimension: blocked {
    type: yesno
    sql: ${TABLE}.blocked ;;
  }

  dimension: company_answer {
    type: string
    sql: ${TABLE}.company_answer ;;
  }

  dimension_group: company_answer {
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
    sql: ${TABLE}.company_answer_at ;;
  }

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }

  dimension: company_not_existing {
    type: string
    sql: ${TABLE}.company_not_existing ;;
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

  dimension: diversity_across_organization {
    type: number
    sql: ${TABLE}.diversity_across_organization ;;
  }

  dimension: diversity_in_leadership {
    type: number
    sql: ${TABLE}.diversity_in_leadership ;;
  }

  dimension: e_nps {
    type: number
    sql: ${TABLE}.eNPS ;;
  }

  dimension: flagged {
    type: yesno
    sql: ${TABLE}.flagged ;;
  }

  dimension: is_anonymous {
    type: yesno
    sql: ${TABLE}.is_anonymous ;;
  }

  dimension: nb_comments {
    type: number
    sql: ${TABLE}.nb_comments ;;
  }

  dimension: nb_likes {
    type: number
    sql: ${TABLE}.nb_likes ;;
  }

  dimension: nb_shares {
    type: number
    sql: ${TABLE}.nb_shares ;;
  }

  dimension: not_rated {
    type: yesno
    sql: ${TABLE}.not_rated ;;
  }

  dimension: notified {
    type: yesno
    sql: ${TABLE}.notified ;;
  }

  dimension: overall_inclusiveness {
    type: number
    sql: ${TABLE}.overall_inclusiveness ;;
  }

  dimension_group: published {
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
    sql: ${TABLE}.published_at ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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

  dimension: verified {
    type: yesno
    sql: ${TABLE}.verified ;;
  }

  dimension_group: verified {
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
    sql: ${TABLE}.verified_at ;;
  }

  dimension: work_like_balance {
    type: number
    sql: ${TABLE}.work_like_balance ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      company.id,
      company.name,
      company.cover_name,
      company.cover_original_name,
      company.logo_name,
      company.logo_original_name,
      company.video_uploaded_name,
      company.video_uploaded_original_name,
      user.id,
      user.first_name,
      user.last_name,
      user.image_name,
      user.image_original_name,
      feed_item.count,
      flagged.count,
      review_review_tag.count,
      user_comment.count,
      user_like.count,
      user_share.count
    ]
  }
}
