view: rep_table {
  sql_table_name: ifs_test.rep_table ;;

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

  dimension: rep_id {
    type: number
    sql: ${TABLE}.rep_id ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  dimension: lat {
    type: zipcode
    sql: ${TABLE}.lat ;;
  }
  dimension: long{
    type: zipcode
    sql: ${TABLE}.long ;;
  }

  dimension: location {
    type: location
    sql_longitude: ${TABLE}.long ;;
    sql_latitude: ${TABLE}.lat ;;
  }


  dimension: rep_name{
    type: string
    sql: CONCAT(${TABLE}.first_name, ' ', ${TABLE}.last_name) ;;
    link: {
      label: "Go to Rep Dashboard"
      url: "https://mashey.looker.com/dashboards/6?"
    }
  }


  measure: count {
    type: count
    drill_fields: [first_name, last_name, company_name]
  }
}
