class S3ImagesController < ApplicationController
  before_action :get_bucket,    only: [:create]

  def create
    filename  = params["image"].original_filename
    new_obj   = @bucket.objects[filename]
    if new_obj.write(params["image"])
      render json: { message: 'success!'}, status: 200
    else
      render json: { message: 'error!'}, status: 500
    end
  end


  private


end
