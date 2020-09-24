# typed: true
# frozen_string_literal: true

class LandingController < ApplicationController
  def index
    redirect_to '/dashboard' if account_signed_in?
  end
end
