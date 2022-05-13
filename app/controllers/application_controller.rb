class ApplicationController < ActionController::Base
    include Pundit

    rescue_from Pundit::NotAuthorizedError, with: :forbidden

    def forbidden
        # render plain: "working"
        flash[:alert] = "You're not authorized to perform this action!"
        # render json: flash
        # render plain: listings_path
        redirect_to root_path
    end
end
