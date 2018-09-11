view: carriers {
  sql_table_name: ifs_test_2.carriers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: claims_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.claims_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, claims.claim_id]
  }
}
