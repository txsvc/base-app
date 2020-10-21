# typed: strict
# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :accounts

  # the default route
  root 'landing#index'

  # static pages have to be explicitly be mentioned due to the catch-all rule below
  get 'pages/imprint' => 'high_voltage/pages#show', id: 'imprint'
  get 'pages/privacy' => 'high_voltage/pages#show', id: 'privacy'

  # catch all
  match '*unmatched', to: 'errors#page_not_found', via: :all

end
