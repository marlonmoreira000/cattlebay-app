class ListingsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    def index
        @listings = Listing.all
    end

    def show
    end
end
