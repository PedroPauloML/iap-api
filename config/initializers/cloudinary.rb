Cloudinary.config do |config|
  config.cloud_name = ENV['PORTAL_IAP_PA_CLOUDINARY_CLOUD_NAME']
  config.api_key = ENV['PORTAL_IAP_PA_CLOUDINARY_API_KEY']
  config.api_secret = ENV['PORTAL_IAP_PA_CLOUDINARY_API_SECRET']
  config.secure = true
  config.cdn_subdomain = true
end