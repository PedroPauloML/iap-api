json.(@news, *@news.attribute_names)
json.tags @news.tags do |tag|
  json.(tag, *tag.attribute_names)
end