json.(@news, *@news.attribute_names)
json.author_name @news.author_name
json.tags @news.tags do |tag|
  json.(tag, *tag.attribute_names)
end