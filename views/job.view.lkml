view: job {
  sql_table_name: www_kanarys_com.job ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: apply_url {
    type: string
    sql: ${TABLE}.apply_url ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: education_level {
    type: string
    sql: ${TABLE}.education_level ;;
  }

  dimension: experience_level {
    type: string
    sql: ${TABLE}.experience_level ;;
  }

  dimension: industry_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.industry_id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_highlighted {
    type: yesno
    sql: ${TABLE}.is_highlighted ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: position_type {
    type: string
    sql: ${TABLE}.position_type ;;
  }

  dimension: salary_from {
    type: string
    sql: ${TABLE}.salary_from ;;
  }

  dimension: salary_to {
    type: string
    sql: ${TABLE}.salary_to ;;
  }

  dimension: salary_type {
    type: string
    sql: ${TABLE}.salary_type ;;
  }

  dimension: search_tags {
    type: string
    sql: ${TABLE}.search_tags ;;
  }

  dimension: skills {
    type: string
    sql: ${TABLE}.skills ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
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
      industry.id,
      industry.name
    ]
  }
}
