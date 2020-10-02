view: pinpoint_campaign {
  sql_table_name: www_kanarys_com.pinpoint_campaign ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: application_id {
    type: string
    sql: ${TABLE}.application_id ;;
  }

  dimension: campaign_description {
    type: string
    sql: ${TABLE}.campaign_description ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: channel_type {
    type: string
    sql: ${TABLE}.channel_type ;;
  }

  dimension: city_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.city_id ;;
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

  dimension: department_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.department_id ;;
  }

  dimension: email_body {
    type: string
    sql: ${TABLE}.email_body ;;
  }

  dimension: email_from {
    type: string
    sql: ${TABLE}.email_from ;;
  }

  dimension: email_htmlbody {
    type: string
    sql: ${TABLE}.email_htmlbody ;;
  }

  dimension: email_title {
    type: string
    sql: ${TABLE}.email_title ;;
  }

  dimension_group: schedule_endtime {
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
    sql: ${TABLE}.schedule_endtime ;;
  }

  dimension: schedule_frequency {
    type: string
    sql: ${TABLE}.schedule_frequency ;;
  }

  dimension_group: schedule_starttime {
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
    sql: ${TABLE}.schedule_starttime ;;
  }

  dimension: schedule_starttype {
    type: string
    sql: ${TABLE}.schedule_starttype ;;
  }

  dimension: schedule_timezone {
    type: string
    sql: ${TABLE}.schedule_timezone ;;
  }

  dimension: segment_id {
    type: string
    sql: ${TABLE}.segment_id ;;
  }

  dimension: sms_body {
    type: string
    sql: ${TABLE}.sms_body ;;
  }

  dimension: sms_messagetype {
    type: string
    sql: ${TABLE}.sms_messagetype ;;
  }

  dimension: sms_senderid {
    type: string
    sql: ${TABLE}.sms_senderid ;;
  }

  dimension: survey_company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_company_id ;;
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
      campaign_name,
      survey_company.id,
      department.id,
      department.name,
      city.id,
      city.name,
      pinpoint_campaign_user.count,
      survey_contribution.count
    ]
  }
}
