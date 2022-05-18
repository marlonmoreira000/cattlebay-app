class UserController < ApplicationController
    def profile
    end

    #------------------------------------------------------
    # Select all the listings that are linked to the
    # current user. These listings are displayed on the
    # user's personal profile, allowing them to track. 
    #------------------------------------------------------
    def listings
        @listings = current_user.listings
    end

    #------------------------------------------------------
    # Get all the listings which the current user has
    # purchased. These are dispayed on their personal
    # profile page.
    #------------------------------------------------------
    def purchases
        @listings = purchased_listings
    end

    private

    def purchased_listings
        purchased_list = []
        current_user.orders.each do |order|
            purchased_list.append(order.listing)
        end
        return purchased_list
    end
end
