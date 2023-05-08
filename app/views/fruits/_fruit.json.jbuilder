json.extract! fruit, :id, :name, :price, :image, :created_at, :updated_at
json.url fruit_url(fruit, format: :json)
json.image url_for(fruit.image)
