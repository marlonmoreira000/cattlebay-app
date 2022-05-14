class ListingsController < ApplicationController
    before_action :authenticate_user!, except: %i[index show]
    before_action :check_auth

    def index
        @listings = Listing.all
    end

    def show
        @listing = Listing.find(params[:id])
    end

    def new
        @listing = Listing.new
    end

    def create
        # @listing = current_user.profile.listings.create(listing_params)
        render json: current_user.profile 
        # if @listing.valid?
        #     redirect_to @listing
        # else
        #     flash.now[:alert] = @listing.errors.full_messages.join('<br>')
        #     render 'new'
        # end
      # render json: listing_params
    end

  private

    def check_auth
        authorize Listing
    end

    def listing_params
    return params.require(:listing).permit(:name, :picture)
    end
end
