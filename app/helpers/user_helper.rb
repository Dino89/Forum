module UserHelper
  
  def likes_of_user(comment)
    @user = User.find(comment.user_id)
    @user.liked
  end
    
end
