view: annual_report_upload {
  sql_table_name: www_kanarys_com.annual_report_upload ;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
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

  dimension: upload_dimensions {
    type: string
    sql: ${TABLE}.upload_dimensions ;;
  }

  dimension: upload_mime_type {
    type: string
    sql: ${TABLE}.upload_mime_type ;;
  }

  dimension: upload_name {
    type: string
    sql: ${TABLE}.upload_name ;;
  }

  dimension: upload_original_name {
    type: string
    sql: ${TABLE}.upload_original_name ;;
  }

  dimension: upload_size {
    type: number
    sql: ${TABLE}.upload_size ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      upload_name,
      upload_original_name,
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
