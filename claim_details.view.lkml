view: claim_details {
  derived_table: {
    sql:
      SELECT *
      FROM ifs_test_2.claim_details a
      left join ifs_test_2.reps b on b.rep_id = a.rep_id;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accident {
    type: string
    sql: ${TABLE}.accident ;;
  }

  dimension_group: accident {
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
    sql: ${TABLE}.accident_date ;;
  }

  dimension: alternative_dispute_resolution {
    type: string
    sql: ${TABLE}.alternative_dispute_resolution ;;
  }

  dimension_group: ancr {
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
    sql: ${TABLE}.ancr_date ;;
  }

  dimension_group: assembly {
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
    sql: ${TABLE}.assembly_date ;;
  }

  dimension: attorneyrepresentative {
    type: string
    sql: ${TABLE}."Attorney/Representative" ;;
  }

  dimension: average_weekly_wage {
    type: number
    sql: ${TABLE}.average_weekly_wage ;;
  }

  dimension: c2_date {
    type: string
    sql: ${TABLE}."C-2 Date" ;;
  }

  dimension: c3_date {
    type: string
    sql: ${TABLE}."C-3 Date" ;;
  }

  dimension: carrier_name {
    type: string
    sql: ${TABLE}."Carrier Name" ;;
  }

  dimension: carrier_type {
    type: string
    sql: ${TABLE}."Carrier Type" ;;
  }

  dimension: claim_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.claim_id ;;
  }

  dimension: closed_count {
    type: number
    sql: ${TABLE}."Closed Count" ;;
  }

  dimension_group: controverted {
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
    sql: ${TABLE}.controverted_date ;;
  }

  dimension: county_of_injury {
    type: string
    sql: ${TABLE}."County of Injury" ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
  }

  dimension_group: first_appeal {
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
    sql: ${TABLE}.first_appeal_date ;;
  }

  dimension: first_hearing_date {
    type: string
    sql: ${TABLE}."First Hearing Date" ;;
  }

  dimension: hearing_count {
    type: number
    sql: ${TABLE}."Hearing Count" ;;
  }

  dimension: highest_process {
    type: string
    sql: ${TABLE}."Highest Process" ;;
  }

  dimension: ime4_count {
    type: number
    sql: ${TABLE}."IME-4 Count" ;;
  }

  dimension: interval_assembled_to_ancr {
    type: number
    sql: ${TABLE}."Interval Assembled to ANCR" ;;
  }

  dimension: occupational_disease {
    type: string
    sql: ${TABLE}."Occupational Disease" ;;
  }

  dimension_group: ppd_non_scheduled_loss {
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
    sql: ${TABLE}.ppd_non_scheduled_loss_date ;;
  }

  dimension_group: ppd_scheduled_loss {
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
    sql: ${TABLE}.ppd_scheduled_loss_date ;;
  }

  dimension_group: ptd {
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
    sql: ${TABLE}.ptd_date ;;
  }

  dimension: rep_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.rep_id ;;
  }

  dimension_group: section_32 {
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
    sql: ${TABLE}.section_32_date ;;
  }

  dimension: rep_state{
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: rep_city{
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: rep_county{
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: rep_name{
    type: string
    sql: CONCAT(${TABLE}.first_name, ' ', ${TABLE}.last_name) ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      district_name,
      carrier_name,
      claims.claim_id,
      reps.first_name,
      reps.last_name,
      reps.company_name,
      reps.rep_id
    ]
  }
}
