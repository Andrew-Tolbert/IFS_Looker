connection: "harvest_internal"

include: "*.view.lkml"

# include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }


explore: claims {
  join: claim_details {
    relationship: many_to_one
    sql_on: ${claim_details.claim_id} = ${claims.claim_id} ;;
  }

  join: wcio {
    relationship: many_to_one
    sql_on: ${wcio.claim_id}} = ${claims.claim_id} ;;
  }

  join: oiics {
    relationship: many_to_one
    sql_on: ${oiics.claim_id} = ${claims.claim_id} ;;
  }
  join: carriers {
    relationship: many_to_one
    sql_on: ${carriers.claims_id} = ${claims.claim_id} ;;
  }
  join: person {
    relationship: many_to_one
    sql_on: ${person.claim_id} = ${claims.claim_id} ;;
  }



}
