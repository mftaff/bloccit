class Post < ActiveRecord::Base
    has_many :comments
    
    before_save :sanitze_title
    
    
    def sanitized_title
        unless title.blank?
            title.include?(LIST_OF_BAD_WORDS) ? "SPAM" : title
        end
    end
    
    def sanitize_title
        self.title = title.include?(LIST_OF_BAD_WORDS) ? "SPAM" : title
    end
end

post = Post.new(title: "my title", body: "my body")
post.title # "my title"
post.sanitized_title # "my title"
