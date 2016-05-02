json.article do |json|
  json.(@article, :id, :name, :content)
  json.author do |json|
    json.(@article.author, :id, :name)
    json.fullname fullname(@article)
  end
  json.comments @article.comments, :id, :content
end