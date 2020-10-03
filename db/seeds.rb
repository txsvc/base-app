# typed: strict
# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

account_service = CreateAccountService.new

# admin
account_service.create('admin', 'admin@example.com', 'changeme', :admin)
# user/members
account_service.create('user1', 'user1@example.com', 'changeme', :member)
account_service.create('user2', 'user2@example.com', 'changeme')
# api
account_service.create('api1', 'api1@example.com', 'changeme', :api)