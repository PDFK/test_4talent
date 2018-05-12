require "rails_helper"

RSpec.describe Company, type: :model do
  context "relationships" do
    it { should has_many(:benefits) }
  end

end