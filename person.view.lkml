view: person {
  sql_table_name: ifs_test_2.person ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: birth_year {
    type: number
    sql: ${TABLE}.birth_year ;;
  }

  dimension: claim_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.claim_id ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

  measure: med_age_at_injury {
    type: median
    sql: ${age} ;;
    drill_fields: [claim_details.carrier_type,med_age_at_injury]
  }

  measure: count {
    type: count
    drill_fields: [id, claims.claim_id]
  }
}
