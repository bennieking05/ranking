view: user_visit_company {
  sql_table_name: www_kanarys_com.user_visit_company ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age_range {
    type: string
    sql: ${TABLE}.age_range ;;
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

  dimension: education_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.education_level_id ;;
  }

  dimension: gender_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.gender_id ;;
  }

  dimension: nb_work_experiences {
    type: number
    sql: ${TABLE}.nb_work_experiences ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: race_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.race_id ;;
  }

  dimension: religion_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.religion_id ;;
  }

  dimension: route {
    type: string
    sql: ${TABLE}.route ;;
  }

  dimension: route_params {
    type: string
    sql: ${TABLE}.route_params ;;
  }

  dimension: sexual_orientation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sexual_orientation_id ;;
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
      user.id,
      user.first_name,
      user.last_name,
      user.image_name,
      user.image_original_name,
      company.id,
      company.name,
      company.cover_name,
      company.cover_original_name,
      company.logo_name,
      company.logo_original_name,
      company.video_uploaded_name,
      company.video_uploaded_original_name,
      education_level.id,
      education_level.name,
      race.id,
      race.name,
      religion.id,
      religion.name,
      gender.id,
      gender.name,
      sexual_orientation.id,
      sexual_orientation.name
    ]
  }
}
