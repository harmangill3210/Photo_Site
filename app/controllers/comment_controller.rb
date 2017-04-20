class CommentController < ApplicationController
  def index
    @photoid=params[:id]
    @photo=Photo.find_by(id: @photoid)
    @comments=Comment.where(photo_id: @photoid)
    @has_comment=@comments.count>0
    @user=User.find_by(id:@photo.user_id)
  end
  def index_user_name(user_id)
    @user=User.find_by(id:user_id)
    return @user.first_name

  end
  helper_method :index_user_name
end
