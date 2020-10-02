view: user {
  sql_table_name: www_kanarys_com.user ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address_administrative_level1long {
    type: string
    sql: ${TABLE}.address_administrative_level1long ;;
  }

  dimension: address_administrative_level1short {
    type: string
    sql: ${TABLE}.address_administrative_level1short ;;
  }

  dimension: address_administrative_level2 {
    type: string
    sql: ${TABLE}.address_administrative_level2 ;;
  }

  dimension: address_city {
    type: string
    sql: ${TABLE}.address_city ;;
  }

  dimension: address_country_long {
    type: string
    sql: ${TABLE}.address_country_long ;;
  }

  dimension: address_country_short {
    type: string
    sql: ${TABLE}.address_country_short ;;
  }

  dimension: address_latitude {
    type: number
    sql: ${TABLE}.address_latitude ;;
  }

  dimension: address_longitude {
    type: number
    sql: ${TABLE}.address_longitude ;;
  }

  dimension: address_number {
    type: string
    sql: ${TABLE}.address_number ;;
  }

  dimension: address_postal_code {
    type: string
    sql: ${TABLE}.address_postal_code ;;
  }

  dimension: address_request {
    type: string
    sql: ${TABLE}.address_request ;;
  }

  dimension: address_response {
    type: string
    sql: ${TABLE}.address_response ;;
  }

  dimension: address_street {
    type: string
    sql: ${TABLE}.address_street ;;
  }

  dimension: badge_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.badge_id ;;
  }

  dimension_group: birth {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.birth_date ;;
  }

  dimension: confirmation_token {
    type: string
    sql: ${TABLE}.confirmationToken ;;
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

  dimension: differently_abled {
    type: string
    sql: ${TABLE}.differently_abled ;;
  }

  dimension: differently_abled_other {
    type: string
    sql: ${TABLE}.differently_abled_other ;;
  }

  dimension: education_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.education_level_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: employee_status {
    type: string
    sql: ${TABLE}.employee_status ;;
  }

  dimension: enable {
    type: yesno
    sql: ${TABLE}.enable ;;
  }

  dimension: enable_welcome {
    type: yesno
    sql: ${TABLE}.enable_welcome ;;
  }

  dimension: family_status {
    type: string
    sql: ${TABLE}.family_status ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.gender_id ;;
  }

  dimension: gender_other {
    type: string
    sql: ${TABLE}.gender_other ;;
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

  dimension_group: last_login {
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
    sql: ${TABLE}.last_login_at ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: native_language {
    type: string
    sql: ${TABLE}.native_language ;;
  }

  dimension: nb_reviews {
    type: number
    sql: ${TABLE}.nb_reviews ;;
  }

  dimension: oauth_access_token {
    type: string
    sql: ${TABLE}.oauth_access_token ;;
  }

  dimension: oauth_provider {
    type: string
    sql: ${TABLE}.oauth_provider ;;
  }

  dimension: oauth_uid {
    type: string
    sql: ${TABLE}.oauth_uid ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension_group: password_requested {
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
    sql: ${TABLE}.password_requested_at ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: privacy {
    type: string
    sql: ${TABLE}.privacy ;;
  }

  dimension: race_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.race_id ;;
  }

  dimension: race_other {
    type: string
    sql: ${TABLE}.race_other ;;
  }

  dimension: religion_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.religion_id ;;
  }

  dimension: religion_other {
    type: string
    sql: ${TABLE}.religion_other ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension: roles {
    type: string
    sql: ${TABLE}.roles ;;
  }

  dimension_group: see_notification {
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
    sql: ${TABLE}.see_notification_at ;;
  }

  dimension: sexual_orientation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sexual_orientation_id ;;
  }

  dimension: sexual_orientation_other {
    type: string
    sql: ${TABLE}.sexual_orientation_other ;;
  }

  dimension: transgender_identification {
    type: string
    sql: ${TABLE}.transgender_identification ;;
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

  dimension: view_welcome {
    type: yesno
    sql: ${TABLE}.view_welcome ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      image_name,
      image_original_name,
      gender.id,
      gender.name,
      race.id,
      race.name,
      sexual_orientation.id,
      sexual_orientation.name,
      religion.id,
      religion.name,
      education_level.id,
      education_level.name,
      badge.id,
      badge.image_name,
      badge.image_original_name,
      admin.count,
      company_concern.count,
      company_contribution.count,
      company_sentiment.count,
      contract_request.count,
      email_sent.count,
      feed_banner_user.count,
      flagged.count,
      invitation.count,
      invitation_recipient.count,
      pinpoint_campaign_user.count,
      review.count,
      survey_campaign_submission.count,
      survey_contribution.count,
      user_benefit.count,
      user_click_company.count,
      user_comment.count,
      user_company.count,
      user_follow_company.count,
      user_industry.count,
      user_job.count,
      user_like.count,
      user_share.count,
      user_social_group_issue.count,
      user_video_company.count,
      user_visit_company.count,
      work_experience.count
    ]
  }
}
