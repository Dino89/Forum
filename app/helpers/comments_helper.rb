module CommentsHelper
  
  def toggle_like_button(comment, user)
    if user.flagged?(comment, :like)
      
      link_to 'dislike', like_comment_path(comment), class:"likebutton"
    else
      
      link_to 'like', like_comment_path(comment), class:"likebutton"
    end
  end
    
end
