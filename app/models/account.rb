# typed: true
# frozen_string_literal: true

class Account < ApplicationRecord
  # user: just a registered user
  # member: same as user?
  # subscriber: paying user?
  # staff: internal user with some privileges
  # admin: like the name says
  # god: super admin
  # app: an application is accessing via the API
  # api: could also be a user or app accessing via the API
  enum role: { user: 0, member: 1, subscriber: 2, staff: 3, admin: 4, god: 5, app: 10, api: 20 }

  after_initialize :set_defaults, unless: :persisted?

  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable

  def super_admin?
    role == 'god'
  end

  def admin?
    role == 'admin'
  end

  def application?
    role == 'app'
  end

  def api?
    role == 'api'
  end

  def display_name
    name
  end

  def unique_id
    email
  end

  private

  def set_defaults
    set_default_role
    set_default_name
  end

  def set_default_role
    self.role ||= :user
  end

  def set_default_name
    self.name ||= email.split('@')[0]
  end
end
