view: products {
  sql_table_name: demo_db.products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  parameter: labels {
    hidden: yes
    type: unquoted
    allowed_value: {
      value: "total"
    }
    allowed_value: {
      value: "average"
    }
  }

  filter: testing {
    type: string
    full_suggestions: yes
    sql: ${brand} ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }
  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }
  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }

  measure: Dynamic_label_measure{
    label: "{{labels._parameter_value}}"
    type: sum
    sql: ${id} ;;
    value_format: "$#,##0"
  }
}
