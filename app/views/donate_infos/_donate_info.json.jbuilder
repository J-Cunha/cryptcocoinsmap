json.extract! donate_info, :id, :currency_id, :name, :address, :created_at, :updated_at
json.url donate_info_url(donate_info, format: :json)
