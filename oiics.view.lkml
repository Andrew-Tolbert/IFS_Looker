view: oiics {
  sql_table_name: ifs_test_2.oiics ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: claim_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.claim_id ;;
  }

  dimension: event_exposure_code {
    type: string
    sql: ${TABLE}.event_exposure_code ;;
  }

  dimension: event_exposure_description {
    type: string
    sql: ${TABLE}.event_exposure_description ;;
  }

  dimension: injury_source_code {
    type: string
    sql: ${TABLE}.injury_source_code ;;
  }

  dimension: injury_source_description {
    type: string
    sql: ${TABLE}.injury_source_description ;;
  }

  dimension: nature_of_injury_code {
    type: string
    sql: ${TABLE}.nature_of_injury_code ;;
  }

  dimension: nature_of_injury_description {
    type: string
    sql: ${TABLE}.nature_of_injury_description ;;
  }

  dimension: part_of_body_code {
    type: string
    sql: ${TABLE}.part_of_body_code ;;
  }

  dimension: part_of_body_description {
    type: string
    sql: ${TABLE}.part_of_body_description ;;
  }

  dimension: secondary_source_code {
    type: string
    sql: ${TABLE}.secondary_source_code ;;
  }

  dimension: secondary_source_description {
    type: string
    sql: ${TABLE}.secondary_source_description ;;
  }

  measure: count {
    type: count
    drill_fields: [id, claims.claim_id]
  }
}
