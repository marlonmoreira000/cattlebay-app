module ApplicationHelper
#-----------------------------------------------------------------------
# the current listing is parsed in and active storage attachments table
# is checked for an attached or default picture to display
#-----------------------------------------------------------------------  
    def show_picture(listing)
        if listing.picture.attached?
            return image_tag(listing.picture, width: 150)
        end
    end
end
