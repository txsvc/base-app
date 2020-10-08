# typed: strict
# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :accounts

  # the default route
  root 'landing#index'
end
