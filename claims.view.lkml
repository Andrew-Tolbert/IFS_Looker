view: claims {
  sql_table_name: ifs_test_2.claims ;;

  dimension: claim_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.claim_id ;;
  }

  dimension: claim_injury_type {
    type: string
    sql: ${TABLE}.claim_injury_type ;;
  }

  dimension: claim_status {
    type: string
    sql: ${TABLE}.claim_status ;;
  }

  dimension: claim_type {
    type: string
    sql: ${TABLE}.claim_type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_claim_identifier{
    type: count_distinct
    sql: ${claim_id} ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      claim_id,
      carriers.count,
      claim_details.count,
      oiics.count,
      person.count,
      wcio.count
    ]
  }
}
