json.extract! product, :id, :title, :description, :url_name, :price, :created_at, :updated_at
json.url product_url(product, format: :json)