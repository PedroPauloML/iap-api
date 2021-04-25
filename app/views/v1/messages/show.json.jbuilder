json.(@message, *@message.attribute_names)
json.tags @message.tags do |tag|
  json.(tag, *tag.attribute_names)
end