# typed: false
# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  include Error::ErrorHandler

  include Pundit

  # enforce parameters
  ActionController::Parameters.action_on_unpermitted_parameters = :raise

  rescue_from ActionController::UnknownFormat, ActionView::MissingTemplate do
    respond_to_error(:not_found, 500, 'not found')
  end
end
