require "rails_helper"

RSpec.describe User, type: :model do

  describe "#filter " do
    before(:each) do
      @user = FactoryBot.create(:user, name: "Primero")
      @user_2 = FactoryBot.create(:user, name: "Segundo")
      @company_public = FactoryBot.create(:company, type: "public")
      @company = FactoryBot.create(:company)
      @public_benefit = FactoryBot.create(:benefit, company: @company_public)
      @private_benefit = FactoryBot.create(:benefit, company: @company, amount: 1000)
      @postulation = FactoryBot.create(:postulation, benefit: @public_benefit, user: @user)
      @postulation_2 = FactoryBot.create(:postulation, benefit: @private_benefit, user: @user_2)
    end

    context "when i use the filter" do
      it "should filter the right users" do
      expect(User.all.filter).to eq([@user_2])
      end

    end
  end

end
