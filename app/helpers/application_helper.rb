module ApplicationHelper
    def form_group_tag(errors, &block)
        css_class = 'form-group'
        css_class << ' has-error' if errors.any?
        
        content_tag :div, capture(&block), class: css_class
    end   
    
    def comment_email_link(comment)
        if Rails.env.development? 
            "https://bloccit-mftaff.c9users.io/topics/#{comment.post.topic.id}/posts/#{comment.post.id}/#comment-#{comment.id}".html_safe
        else
            topic_post_url(comment.post.topic, comment.post, anchor: "comment-#{comment.id}").html_safe
        end
    end
end
