module TopicsHelper
    def user_is_admin_for_topics?
        current_user && current_user.admin?
    end    
    
    def user_is_mod_for_topics?
        current_user && (current_user.moderator? || current_user.admin?)
    end
end
