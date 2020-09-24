# typed: true
# frozen_string_literal: true

class DashboardController < ApplicationController
  before_action :authenticate_account!

  def index
    # nothing
  end
end
