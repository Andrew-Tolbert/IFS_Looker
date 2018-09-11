view: wcio {
  sql_table_name: ifs_test_2.wcio ;;

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

  measure: count {
    type: count
    drill_fields: [id, claims.claim_id]
  }
}
