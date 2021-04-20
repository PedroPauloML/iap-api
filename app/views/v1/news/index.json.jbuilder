json.objects @news.results do |news|
  json.(news, *news.attribute_names)

  tags = news.tags
  json.tags tags do |tag|
    json.(tag, *tag.attribute_names)
  end
end
json.pagination do
  json.current_page     @news.current_page
  json.total_objects    @total_objects
  json.per_page         @news.per_page
  json.total_pages      @news.total_pages
end
