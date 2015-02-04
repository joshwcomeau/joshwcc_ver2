class S3ImagesController < ApplicationController
  def create
    binding.pry
    s3 = AWS::S3::Client.new
  end
end
