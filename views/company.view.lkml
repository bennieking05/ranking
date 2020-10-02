view: company {
  sql_table_name: www_kanarys_com.company ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: about {
    type: string
    sql: ${TABLE}.about ;;
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

  dimension: awards_recognition_avg {
    type: number
    sql: ${TABLE}.awards_recognition_avg ;;
  }

  dimension: benefits_and_resources_avg {
    type: number
    sql: ${TABLE}.benefits_and_resources_avg ;;
  }

  dimension: benefits_policy_avg {
    type: number
    sql: ${TABLE}.benefits_policy_avg ;;
  }

  dimension: cover_dimensions {
    type: string
    sql: ${TABLE}.cover_dimensions ;;
  }

  dimension: cover_mime_type {
    type: string
    sql: ${TABLE}.cover_mime_type ;;
  }

  dimension: cover_name {
    type: string
    sql: ${TABLE}.cover_name ;;
  }

  dimension: cover_original_name {
    type: string
    sql: ${TABLE}.cover_original_name ;;
  }

  dimension: cover_size {
    type: number
    sql: ${TABLE}.cover_size ;;
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

  dimension: dei_initiatives_avg {
    type: number
    sql: ${TABLE}.dei_initiatives_avg ;;
  }

  dimension: diversity_across_organization_avg {
    type: number
    sql: ${TABLE}.diversity_across_organization_avg ;;
  }

  dimension: diversity_in_leadership_avg {
    type: number
    sql: ${TABLE}.diversity_in_leadership_avg ;;
  }

  dimension: eeo_report_avg {
    type: number
    sql: ${TABLE}.eeo_report_avg ;;
  }

  dimension: eeoc_recognition_avg {
    type: number
    sql: ${TABLE}.eeoc_recognition_avg ;;
  }

  dimension: employee_perks_avg {
    type: number
    sql: ${TABLE}.employee_perks_avg ;;
  }

  dimension: employees_range_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.employees_range_id ;;
  }

  dimension: enps_avg {
    type: number
    sql: ${TABLE}.enps_avg ;;
  }

  dimension: epi_avg {
    type: number
    sql: ${TABLE}.epi_avg ;;
  }

  dimension: exit_survey_avg {
    type: number
    sql: ${TABLE}.exit_survey_avg ;;
  }

  dimension: facebook {
    type: string
    sql: ${TABLE}.facebook ;;
  }

  dimension: featured {
    type: yesno
    sql: ${TABLE}.featured ;;
  }

  dimension_group: feed_generated {
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
    sql: ${TABLE}.feed_generated_at ;;
  }

  dimension: founded_at {
    type: string
    sql: ${TABLE}.founded_at ;;
  }

  dimension: global_average {
    type: number
    sql: ${TABLE}.global_average ;;
  }

  dimension: global_average_new {
    type: number
    sql: ${TABLE}.global_average_new ;;
  }

  dimension: has_subscription {
    type: yesno
    sql: ${TABLE}.has_subscription ;;
  }

  dimension: industry_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.industry_id ;;
  }

  dimension: instagram {
    type: string
    sql: ${TABLE}.instagram ;;
  }

  dimension: is_adoptive_leave {
    type: yesno
    sql: ${TABLE}.is_adoptive_leave ;;
  }

  dimension: is_demographics {
    type: yesno
    sql: ${TABLE}.is_demographics ;;
  }

  dimension: is_hero {
    type: yesno
    sql: ${TABLE}.is_hero ;;
  }

  dimension: is_logo {
    type: yesno
    sql: ${TABLE}.is_logo ;;
  }

  dimension: is_maternity_leave {
    type: yesno
    sql: ${TABLE}.is_maternity_leave ;;
  }

  dimension: is_paid_time_off {
    type: yesno
    sql: ${TABLE}.is_paid_time_off ;;
  }

  dimension: is_paternity_leave {
    type: yesno
    sql: ${TABLE}.is_paternity_leave ;;
  }

  dimension: is_post_jobs {
    type: yesno
    sql: ${TABLE}.is_post_jobs ;;
  }

  dimension: linkedin {
    type: string
    sql: ${TABLE}.linkedin ;;
  }

  dimension: logo_dimensions {
    type: string
    sql: ${TABLE}.logo_dimensions ;;
  }

  dimension: logo_mime_type {
    type: string
    sql: ${TABLE}.logo_mime_type ;;
  }

  dimension: logo_name {
    type: string
    sql: ${TABLE}.logo_name ;;
  }

  dimension: logo_original_name {
    type: string
    sql: ${TABLE}.logo_original_name ;;
  }

  dimension: logo_size {
    type: number
    sql: ${TABLE}.logo_size ;;
  }

  dimension: mpi_avg {
    type: number
    sql: ${TABLE}.mpi_avg ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nb_complaints {
    type: number
    sql: ${TABLE}.nb_complaints ;;
  }

  dimension: nb_followers {
    type: number
    sql: ${TABLE}.nb_followers ;;
  }

  dimension: nb_reviews {
    type: number
    sql: ${TABLE}.nb_reviews ;;
  }

  dimension: nb_unfollowers {
    type: number
    sql: ${TABLE}.nb_unfollowers ;;
  }

  dimension: overall_inclusiveness_avg {
    type: number
    sql: ${TABLE}.overall_inclusiveness_avg ;;
  }

  dimension: owner_type {
    type: string
    sql: ${TABLE}.owner_type ;;
  }

  dimension: recruitment_avg {
    type: number
    sql: ${TABLE}.recruitment_avg ;;
  }

  dimension: report_frequency {
    type: string
    sql: ${TABLE}.report_frequency ;;
  }

  dimension_group: report_generated {
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
    sql: ${TABLE}.report_generated_at ;;
  }

  dimension: review_avg {
    type: number
    sql: ${TABLE}.review_avg ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: survey_avg {
    type: number
    sql: ${TABLE}.survey_avg ;;
  }

  dimension: twitter {
    type: string
    sql: ${TABLE}.twitter ;;
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

  dimension: validated {
    type: yesno
    sql: ${TABLE}.validated ;;
  }

  dimension: video_embedded_host {
    type: string
    sql: ${TABLE}.video_embedded_host ;;
  }

  dimension: video_embedded_id {
    type: string
    sql: ${TABLE}.video_embedded_id ;;
  }

  dimension: video_type {
    type: string
    sql: ${TABLE}.video_type ;;
  }

  dimension: video_uploaded_dimensions {
    type: string
    sql: ${TABLE}.video_uploaded_dimensions ;;
  }

  dimension: video_uploaded_mime_type {
    type: string
    sql: ${TABLE}.video_uploaded_mime_type ;;
  }

  dimension: video_uploaded_name {
    type: string
    sql: ${TABLE}.video_uploaded_name ;;
  }

  dimension: video_uploaded_original_name {
    type: string
    sql: ${TABLE}.video_uploaded_original_name ;;
  }

  dimension: video_uploaded_size {
    type: number
    sql: ${TABLE}.video_uploaded_size ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.website ;;
  }

  dimension: work_like_balance_avg {
    type: number
    sql: ${TABLE}.work_like_balance_avg ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      cover_name,
      cover_original_name,
      logo_name,
      logo_original_name,
      video_uploaded_name,
      video_uploaded_original_name,
      industry.id,
      industry.name,
      employees_range.id,
      employees_range.name,
      admin.count,
      annual_report.count,
      annual_report_upload.count,
      article.count,
      company_city.count,
      company_concern.count,
      company_contribution.count,
      company_department.count,
      company_feed.count,
      company_information_page.count,
      company_sentiment.count,
      company_survey_form.count,
      contract.count,
      contract_request.count,
      credit_card.count,
      domain.count,
      eeoc_feed_company.count,
      feed_item.count,
      invitation.count,
      job.count,
      review.count,
      survey_campaign_submission.count,
      survey_company.count,
      survey_contribution.count,
      survey_form.count,
      user_click_company.count,
      user_company.count,
      user_follow_company.count,
      user_video_company.count,
      user_visit_company.count,
      work_experience.count
    ]
  }
}
