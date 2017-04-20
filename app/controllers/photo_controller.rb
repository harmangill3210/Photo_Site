class PhotoController < ApplicationController
  def index
    @userid=params[:id]
    @user=User.find(params[:id])
    @photos=Photo.where(user_id: params[:id])
     @comments=Comment.where(user_id:params[:id])
  end
end
