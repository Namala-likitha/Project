- dashboard: simpledash
  title: simpledash
  layout: newspaper
  preferred_viewer: dashboards-next
  preferred_slug: gMnIUPmcagJObKEt0l45UR
  elements:
  - title: simpledash
    name: simpledash
    model: likitha_thelook
    explore: order_items
    type: looker_grid
    fields: [orders.status, order_items.count, order_items.sale_price, products.department]
    sorts: [order_items.count desc 0]
    limit: 10
    column_limit: 50
    query_timezone: America/Cambridge_Bay
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 12
