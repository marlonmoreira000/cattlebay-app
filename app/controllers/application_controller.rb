class ApplicationController < ActionController::Base
    include Pundit

    rescue_from Pundit::NotAuthorizedError, with: :authorisation_error
    rescue_from SocketError, with: :socket_error

    def authorisation_error
        flash[:alert] = "You're not authorized to perform this action!"
        redirect_to root_path
    end

    def socket_error
        flash[:alert] = "Socket Error. Please check your internet connection!"
        redirect_to root_path
    end
end
