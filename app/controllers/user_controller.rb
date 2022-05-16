class UserController < ApplicationController
    def profile
    end

    def listings
        @listings = current_user.listings
        # render json: @listings
    end

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