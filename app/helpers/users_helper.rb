module UsersHelper
    def profile_display(name, to_display)
        media_type = "#{to_display.name}".downcase.pluralize(2)
        to_display.first.nil? ? "#{name} has not submitted any #{media_type} yet." : (render to_display)
    end
end
