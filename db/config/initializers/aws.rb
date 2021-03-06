# CarrierWave.configure do |config|
#   config.fog_credentials = {
#     provider: "AWS",
#     aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
#     aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
#     region:  'us-west-2'
#
#   }
#   config.fog_directory = ENV['AWS_BUCKET']
#   config.fog_public    = false
#   config.cache_dir     = File.join(Rails.root, 'tmp', 'uploads') if Rails.env.development?
# end


CarrierWave.configure do |config|
  config.fog_credentials = {
      provider:                'AWS',
      aws_access_key_id:       ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key:   ENV['AWS_SECRET_ACCESS_KEY'],
      region:                  'sa-east-1'
  }
  config.fog_directory  = ENV['AWS_BUCKET']
end
