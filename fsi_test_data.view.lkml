view: fsi_test_data {
  sql_table_name: ifs_test.fsi_test_data ;;



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
      month_name,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.accident_date ;;
  }

  dimension: age_at_injury {
    type: number
    sql: ${TABLE}.age_at_injury ;;
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
      month_name,
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
      month_name,
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



  dimension: birth_year {
    type: number
    sql: ${TABLE}.birth_year ;;
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

  dimension: claim_identifier {
    type: number
    value_format_name: id
    sql: ${TABLE}.claim_identifier ;;
  }

  dimension: claim_injury_type {
    type: string
    sql: ${TABLE}.claim_injury_type ;;
  }

  dimension: claim_type {
    type: string
    sql: ${TABLE}.claim_type ;;
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

  dimension: current_claim_status {
    type: string
    sql: ${TABLE}.current_claim_status ;;
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


  dimension_group: first_hearing {
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
     sql: ${TABLE}.first_hearing_date;;
  }


  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: hearing_count {
    type: number
    sql: ${TABLE}."Hearing Count" ;;
  }

  dimension: highest_process {
    type: string
    sql: ${TABLE}."Highest Process" ;;
  }

  dimension: upper_highest_process {
    type: string
    sql: UPPER(${highest_process});;
  }

  dimension: ime4_count {
    type: number
    sql: ${TABLE}."IME-4 Count" ;;
  }

  dimension: interval_assembled_to_ancr {
    type: number
    sql: ${TABLE}."Interval Assembled to ANCR" ;;
  }

  dimension: medical_fee_region {
    type: string
    sql: ${TABLE}."Medical Fee Region" ;;
  }

  dimension: occupational_disease {
    type: string
    sql: ${TABLE}."Occupational Disease" ;;
  }

  dimension: oiics_event_exposure_code {
    type: string
    sql: ${TABLE}.oiics_event_exposure_code ;;
  }

  dimension: oiics_event_exposure_description {
    type: string
    sql: ${TABLE}.oiics_event_exposure_description ;;
  }

  dimension: oiics_injury_source_code {
    type: string
    sql: ${TABLE}.oiics_injury_source_code ;;
  }

  dimension: oiics_injury_source_description {
    type: string
    sql: ${TABLE}.oiics_injury_source_description ;;
  }

  dimension: oiics_nature_of_injury_code {
    type: string
    sql: ${TABLE}.oiics_nature_of_injury_code ;;
  }

  dimension: oiics_nature_of_injury_description {
    type: string
    sql: ${TABLE}.oiics_nature_of_injury_description ;;
  }

  dimension: oiics_part_of_body_code {
    type: string
    sql: ${TABLE}.oiics_part_of_body_code ;;
  }

  dimension: oiics_part_of_body_description {
    type: string
    sql: ${TABLE}.oiics_part_of_body_description ;;
  }

  dimension: oiics_secondary_source_code {
    type: string
    sql: ${TABLE}.oiics_secondary_source_code ;;
  }

  dimension: oiics_secondary_source_description {
    type: string
    sql: ${TABLE}.oiics_secondary_source_description ;;
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

  dimension: wcio_cause_of_injury_code {
    type: number
    sql: ${TABLE}.wcio_cause_of_injury_code ;;
  }

  dimension: wcio_cause_of_injury_description {
    type: string
    sql: ${TABLE}.wcio_cause_of_injury_description ;;
  }

  dimension: wcio_nature_of_injury_code {
    type: number
    sql: ${TABLE}.wcio_nature_of_injury_code ;;
  }

  dimension: wcio_nature_of_injury_description {
    type: string
    sql: ${TABLE}.wcio_nature_of_injury_description ;;
  }

  dimension: wcio_part_of_body_code {
    type: number
    sql: ${TABLE}.wcio_part_of_body_code ;;
  }

  dimension: wcio_part_of_body_description {
    type: string
    sql: ${TABLE}.wcio_part_of_body_description ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}."Zip Code" ;;
  }

  dimension: provided {
    type:number
    sql: CASE WHEN ${attorneyrepresentative} = 'Y'
         THEN 1 ELSE 0 END;;
  }

  dimension: not_represented {
    type:number
    sql: CASE WHEN ${attorneyrepresentative} = 'N'
      THEN 1 ELSE 0 END;;
  }

  dimension: settled {
    type:number
    sql: CASE WHEN ${highest_process} = 'HEARING - SETTLEMENT'
      THEN 1 ELSE 0 END;;
  }


  dimension: days_to_hearing{
    type:number
    sql:${first_hearing_date} -${accident_date};;
  }


  measure: count {
    type: count
    drill_fields: [district_name, carrier_name]
  }

  measure: count_claim_identifier{
    type: count_distinct
    sql: ${claim_identifier} ;;
  }

  measure: med_age_at_injury {
    type: median
    sql: ${age_at_injury} ;;
    drill_fields: [carrier_type,med_age_at_injury]

  }

  measure: weekly_wage_avg {
    type: average
    value_format: "$#.00;($#.00)"
    sql: ${average_weekly_wage} ;;
  }

  measure: sum_provided {
    type: sum
    sql: ${provided} ;;
  }

  measure: sum_not_represented {
    type: sum
    sql: ${not_represented} ;;
  }

  measure: sum_settled {
    type: sum
    sql: ${settled} ;;
  }

  measure: avg_days_to_hearing {
    type: average
    value_format: "#0;(#0)"
    sql: ${days_to_hearing} ;;
  }

}
