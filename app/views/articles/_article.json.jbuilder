json.extract! article, :id, :title, :price, :created_at, :updated_at
json.url article_url(article, format: :json)
