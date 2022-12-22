# frozen_string_literal: true

# class ApplicationController
class ApplicationController < ActionController::Base

  before_action :authenticate, except: %i[new create]

  def current_user
    @current_user ||= session[:current_user_id] &&
                      User.find_by_id(session[:current_user_id])
  end

  private

  def authenticate
    redirect_to root_path unless current_user
  end
end
