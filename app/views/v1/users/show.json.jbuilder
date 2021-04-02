json.(@user, *@user.attribute_names)
json.profile do
  profile = @user.profile
  json.(profile, *profile.attribute_names)
end