view: company_contribution {
  sql_table_name: www_kanarys_com.company_contribution ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: affinity_groups_champion_new {
    type: yesno
    sql: ${TABLE}.affinity_groups_champion_new ;;
  }

  dimension: affinity_groups_champion_old {
    type: yesno
    sql: ${TABLE}.affinity_groups_champion_old ;;
  }

  dimension: affinity_groups_new {
    type: yesno
    sql: ${TABLE}.affinity_groups_new ;;
  }

  dimension: affinity_groups_old {
    type: yesno
    sql: ${TABLE}.affinity_groups_old ;;
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

  dimension: days_off_type_new {
    type: string
    sql: ${TABLE}.days_off_type_new ;;
  }

  dimension: days_off_type_old {
    type: string
    sql: ${TABLE}.days_off_type_old ;;
  }

  dimension: form_answer_new_id {
    type: number
    sql: ${TABLE}.form_answer_new_id ;;
  }

  dimension: form_answer_old_id {
    type: number
    sql: ${TABLE}.form_answer_old_id ;;
  }

  dimension: form_question_id {
    type: number
    sql: ${TABLE}.form_question_id ;;
  }

  dimension: published {
    type: yesno
    sql: ${TABLE}.published ;;
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

  dimension: value_new {
    type: string
    sql: ${TABLE}.value_new ;;
  }

  dimension: value_old {
    type: string
    sql: ${TABLE}.value_old ;;
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
      company_contribution_company_form_answer_new.count,
      company_contribution_company_form_answer_old.count
    ]
  }
}
