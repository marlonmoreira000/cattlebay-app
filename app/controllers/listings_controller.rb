class ListingsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :check_auth

    def index
        @listings = Listing.all
    end

    def show
    end

    private
    def check_auth
        authorize Listing
    end
end
