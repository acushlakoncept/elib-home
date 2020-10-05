# frozen_string_literal: true

# All Administrate controllers inherit from this
# `Administrate::ApplicationController`, making it the ideal place to put
# authentication logic or other before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_admin

    def authenticate_admin
      # TODO: Add authentication logic here.
      if user_signed_in?
        return if current_user.admin === true

        flash[:error] = 'You need to be an admin perform that action'
        redirect_to root_path
      else
        flash[:error] = 'You need to be an login to perform that action'
        redirect_to new_user_session_path
      end
    end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end
