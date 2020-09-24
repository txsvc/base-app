# typed: true
# frozen_string_literal: true

class AccountPolicy < ApplicationPolicy
  def destroy?
    false
  end
end
