CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'xxx',                        # required unless using use_iam_profile
    aws_secret_access_key: 'yyy',                        # required unless using use_iam_profile
  }
  config.storage = :fog
  config.permissions = 0666
  config.cache_dir = "#{Rails.root}/tmp/"
  config.fog_directory  = ENV['FOG_DIRECTORY']                                      # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
  # For an application which utilizes multiple servers but does not need caches persisted across requests,
  # uncomment the line :file instead of the default :storage.  Otherwise, it will use AWS as the temp cache store.
  # config.cache_storage = :file
end