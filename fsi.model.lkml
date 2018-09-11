connection: "harvest_internal"

# include all the views
include: "*.view"

datagroup: fsi_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fsi_default_datagroup

explore: fsi_test_data {
  join: rep_table {
    type: left_outer
    sql_on: ${fsi_test_data.district_name} = ${rep_table.county} ;;
    relationship: one_to_one
  }
}
