class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  private

  def connect_to_s3
    @s3 = AWS::S3.new
  end

  def get_bucket(bucket_name: 'joshwcc')
    connect_to_s3 unless @s3
    @bucket = @s3.buckets[bucket_name]
  end
end
