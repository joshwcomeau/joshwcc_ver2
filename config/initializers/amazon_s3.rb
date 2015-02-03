AWS::S3::Base.establish_connection!(
  :access_key_id     => ENV['JOSHWCC_AMAZON_KEY'], 
  :secret_access_key => ENV['JOSHWCC_AMAZON_SECRET']
)