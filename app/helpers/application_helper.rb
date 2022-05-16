module ApplicationHelper
    def purchased_listings(user)
        purchased_list = []
        user.orders.each do |order|
            purchased_list.append(order.listing)
        end
        return purchased_list
    end
end