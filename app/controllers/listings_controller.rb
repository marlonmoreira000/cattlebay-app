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
        @listing = current_user.listings.create(listing_params)
        current_user.add_role(:seller)
        if @listing.valid?
            @listing.purchased = false
            @listing.save
            redirect_to listings_path
        else
            flash.now[:alert] = @listing.errors.full_messages.join('<br>')
            render "new"
        end
    end

    def edit
        @listing = Listing.find(params[:id])
    end

    def update
        begin
            @listing = Listing.find(params[:id])
            @listing.update!(listing_params)
            redirect_to listing_path(@listing.id)
        rescue
            flash.now[:alert] = @listing.errors.full_messages.join('<br>').html_safe
            render 'edit'
        end
    end

    def destroy
        @listing = Listing.find(params[:id])
        # @listing.picture.purge
        @listing.destroy
        redirect_to listings_path
    end

    def buy
        begin
            @listing = Listing.find(params[:id])
            @listing.update!(purchased: true)
            current_user.add_role(:buyer)
            current_user.orders.create(listing_id: @listing.id)
            redirect_to root_path
        rescue
            flash.now[:alert] = @listing.errors.full_messages.join('<br>').html_safe
            render 'show'
        end
    end

  private

    def check_auth
        authorize Listing  # applies application policy to listing resource
    end

    def listing_params
    return params.require(:listing).permit(:name, :picture, :description, :price)
    end
end
