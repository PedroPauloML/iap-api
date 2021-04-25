json.objects @messages.results do |message|
  json.(message, *message.attribute_names)

  tags = message.tags
  json.tags tags do |tag|
    json.(tag, *tag.attribute_names)
  end
end
json.pagination do
  json.current_page     @messages.current_page
  json.total_objects    @total_objects
  json.per_page         @messages.per_page
  json.total_pages      @messages.total_pages
end
