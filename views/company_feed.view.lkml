view: company_feed {
  sql_table_name: www_kanarys_com.company_feed ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: articles_comment_changed {
    type: yesno
    sql: ${TABLE}.articles_comment_changed ;;
  }

  dimension: articles_like_changed {
    type: yesno
    sql: ${TABLE}.articles_like_changed ;;
  }

  dimension: articles_share_changed {
    type: yesno
    sql: ${TABLE}.articles_share_changed ;;
  }

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }

  dimension: followers_changed {
    type: yesno
    sql: ${TABLE}.followers_changed ;;
  }

  dimension: nb_articles_comment {
    type: number
    sql: ${TABLE}.nb_articles_comment ;;
  }

  dimension: nb_articles_like {
    type: number
    sql: ${TABLE}.nb_articles_like ;;
  }

  dimension: nb_articles_share {
    type: number
    sql: ${TABLE}.nb_articles_share ;;
  }

  dimension: nb_followers {
    type: number
    sql: ${TABLE}.nb_followers ;;
  }

  dimension: nb_reviews {
    type: number
    sql: ${TABLE}.nb_reviews ;;
  }

  dimension: nb_surveys {
    type: number
    sql: ${TABLE}.nb_surveys ;;
  }

  dimension: nb_visitors {
    type: number
    sql: ${TABLE}.nb_visitors ;;
  }

  dimension: reviews_changed {
    type: yesno
    sql: ${TABLE}.reviews_changed ;;
  }

  dimension: surveys_changed {
    type: yesno
    sql: ${TABLE}.surveys_changed ;;
  }

  dimension: visitors_changed {
    type: yesno
    sql: ${TABLE}.visitors_changed ;;
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
      company.video_uploaded_original_name
    ]
  }
}
