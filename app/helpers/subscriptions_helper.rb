module SubscriptionsHelper
  
  def link_to_news_in_subscriptions(uid)
     @user = User.find(uid)
     
     @joins = "INNER JOIN subscriptions ON themes.id = subscriptions.theme_id "
     @subscribed_themes = Theme.find( :all, :joins => [@joins], :conditions => ["subscriptions.user_id = ?", @user.id] )
     
     
     # user has subscriptions
     if !@subscribed_themes.nil?
        @changed_subscribed_themes = []
       
        # find last comment of subscribed theme and the visit's time for this theme
        # visit's time for this theme is compared to the time of the last comment in this theme
        @subscribed_themes.each do |st|
            @last_comment_of_subscribed_theme = Comment.find( :last, :joins => "INNER JOIN themes ON comments.theme_id = themes.id", :conditions => ["themes.id = ?", st.id])
            @themeVisit = ThemeVisit.where(:user_id => @user.id, :theme_id => st.id).first
            
            if @themeVisit.time <= @last_comment_of_subscribed_theme.updated_at 
               @changed_subscribed_themes << st
            end
        end
        
     return @changed_subscribed_themes 
        
     # user has no subscriptions
     else  
        return nil
     end
     
     
  end
  
end
