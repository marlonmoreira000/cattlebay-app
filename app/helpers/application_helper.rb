module ApplicationHelper
    #------------------------------------------------------
    # Get all the listings which the current user has
    # purchased. These are dispayed on their personal
    # profile page.
    #------------------------------------------------------
    def purchased_listings(user)
        purchased_list = []
        user.orders.each do |order|
            purchased_list.append(order.listing)
        end
        return purchased_list
    end
end