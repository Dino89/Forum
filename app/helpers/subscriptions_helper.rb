module SubscriptionsHelper
  
  def news_in_subscriptions(uid)
     @user = User.find(uid)
     @changed_subscribed_themes = []
     
     if has_subscription(@user)
         @joins = "INNER JOIN subscriptions ON themes.id = subscriptions.theme_id "
         @subscribed_themes = Theme.find( :all, :joins => [@joins], :conditions => ["subscriptions.user_id = ?", @user.id] )
         
         # find last comment of subscribed theme and the visit's time for this theme
         # visit's time for this theme is compared to the time of the last comment in this theme
         @subscribed_themes.each do |st|
            # @last_comment_of_subscribed_theme = Comment.find( :last, :joins => "INNER JOIN themes ON comments.theme_id = themes.id", :conditions => ["themes.id = ?", st.id])
            @time_of_last_comment_of_s_th = Comment.find_by_sql(["SELECT c.updated_at, c.user_id FROM comments as c INNER JOIN themes as t ON c.theme_id = t.id order by c.updated_at desc LIMIT 1"])
            
            # user created last comment, so he has seen the latest comments of his subscribed theme
            if @time_of_last_comment_of_s_th[0].user_id == current_user.id 
              return @changed_subscribed_themes
            end
          
            @time_of_last_comment_of_s_th = @time_of_last_comment_of_s_th[0].updated_at
            @themeVisit = ThemeVisit.where(:user_id => @user.id, :theme_id => st.id).first
            if !@themeVisit.nil?
              if @themeVisit.time <= @time_of_last_comment_of_s_th
                 @changed_subscribed_themes << st
              end
            end
            
          end
      end
      
      return @changed_subscribed_themes 
  end
   
   
   def toggle_unsubscribe_theme_button(theme, subscription)
     #@subscription = Subscription.find(subscription.id)
     Subscription.find(subscription.id).destroy
   end
   
   def toggle_subscription_button(theme)
     @users_subscription = Subscription.where(:user_id => current_user.id, :theme_id => theme.id).first
     if @users_subscription.nil?
       link_to 'Abonnieren', subscribe_theme_theme_path(theme)
     else
       link_to 'Nicht mehr abonnieren', :controller => "themes", :action => "unsubscribe_theme", :theme_id => theme.id, :users_subscription_id => @users_subscription.id
     end
   end
   
   def has_subscription(user)
     @user = User.find(user.id)
     @subscription = Subscription.where(:user_id => current_user.id)
     if @subscription.count == 0
       return false
     else
       return true
     end
   end
end
