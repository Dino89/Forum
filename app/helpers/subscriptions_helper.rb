module SubscriptionsHelper
  
  def link_to_news_in_subscriptions(uid)
     @user = User.find(uid)
     
     @joins = "INNER JOIN subscriptions ON themes.id = subscriptions.theme_id "
     @subscribed_themes = Theme.find( :all, :joins => [@joins], :conditions => ["subscriptions.user_id = ?", @user.id] )
     
     @changed_subscribed_themes = []
     
     @subscribed_themes.each do |st|
       @last_comment_of_subscribed_theme = Comment.find( :last, :joins => "INNER JOIN themes ON comments.theme_id = themes.id", :conditions => ["themes.id = ?", st.id])
       
       if @user.logout_time <= @last_comment_of_subscribed_theme.updated_at 
         @changed_subscribed_themes << st
       end
     end 
     
     @changed_subscribed_themes
  end
  
end
