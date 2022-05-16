class UserController < ApplicationController
    def profile
    end

    def listings
        @listings = current_user.listings
        # render json: @listings
    end

    def purchases

    end
end