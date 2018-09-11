view: reps {
  sql_table_name: ifs_test_2.reps ;;

  dimension: rep_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.rep_id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: phone1 {
    type: string
    sql: ${TABLE}.phone1 ;;
  }

  dimension: phone2 {
    type: string
    sql: ${TABLE}.phone2 ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [rep_id, first_name, last_name, company_name, claim_details.count]
  }
}
