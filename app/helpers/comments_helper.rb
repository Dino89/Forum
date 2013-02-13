module CommentsHelper
  
  def toggle_like_button(comment, user)
    if user.flagged?(comment, :like)
      
      link_to 'dislike', like_comment_path(comment)
    else
      
      link_to 'like', like_comment_path(comment)
    end
  end
    
end
