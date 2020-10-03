# typed: true
# frozen_string_literal: true

# CreateAccountService is used to create accounts in e.g. a rake task
class CreateAccountService
  def create(_name, email, password, role = :user)
    Account.find_or_create_by!(email: email) do |a|
      a.email = email
      a.password = password
      a.password_confirmation = password
      a.name = name
      a.role = role

      puts "-- Created account '#{email}' with role '#{role}'"
    end
  rescue StandardError => e
    puts "-- Could not create account. Reason: #{e.message}"
    puts e.backtrace.join("\n").to_s
  end
end
