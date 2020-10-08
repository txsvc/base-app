require 'rails_helper'

RSpec.describe Account, type: :model do

  before do
    @account = Account.create!(email: "joe@example.com", password: "changeme", confirmed_at: Time.now)
  end

  context "account with email" do
    
    it "has a default name" do
      expect(@account.name).to eq("joe")
    end

    it "is a simple :user" do
      expect(@account.role).to eq("user")
    end
  end

end
