view: survey_campaign_submission {
  sql_table_name: www_kanarys_com.survey_campaign_submission ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
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

  dimension: form_question_id {
    type: number
    sql: ${TABLE}.form_question_id ;;
  }

  dimension: submission_id {
    type: number
    sql: ${TABLE}.submission_id ;;
  }

  dimension: survey_campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_campaign_id ;;
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
      survey_campaign.id,
      survey_campaign.name,
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
      user.image_original_name
    ]
  }
}
