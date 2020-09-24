# typed: strict
# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :accounts

  get 'dashboard', to: 'dashboard#index'

  root 'landing#index'
end
