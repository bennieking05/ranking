view: article {
  sql_table_name: www_kanarys_com.article ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: announcement {
    type: yesno
    sql: ${TABLE}.announcement ;;
  }

  dimension: author {
    type: string
    sql: ${TABLE}.author ;;
  }

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
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

  dimension: excerpt {
    type: string
    sql: ${TABLE}.excerpt ;;
  }

  dimension: external_link {
    type: string
    sql: ${TABLE}.external_link ;;
  }

  dimension: highlighted {
    type: yesno
    sql: ${TABLE}.highlighted ;;
  }

  dimension: image_dimensions {
    type: string
    sql: ${TABLE}.image_dimensions ;;
  }

  dimension: image_mime_type {
    type: string
    sql: ${TABLE}.image_mime_type ;;
  }

  dimension: image_name {
    type: string
    sql: ${TABLE}.image_name ;;
  }

  dimension: image_original_name {
    type: string
    sql: ${TABLE}.image_original_name ;;
  }

  dimension: image_size {
    type: number
    sql: ${TABLE}.image_size ;;
  }

  dimension: is_di_news {
    type: yesno
    sql: ${TABLE}.is_di_news ;;
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

  dimension: published {
    type: yesno
    sql: ${TABLE}.published ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      image_name,
      image_original_name,
      company.id,
      company.name,
      company.cover_name,
      company.cover_original_name,
      company.logo_name,
      company.logo_original_name,
      company.video_uploaded_name,
      company.video_uploaded_original_name,
      article_benefit.count,
      article_social_group_issue.count,
      feed_item.count,
      user_comment.count,
      user_like.count,
      user_share.count
    ]
  }
}
