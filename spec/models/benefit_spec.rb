require "rails_helper"

RSpec.describe Benefit, type: :model do
  context "relationships" do
    it { should belongs_to(:company) }
    it { should has_many(:postulations) }
  end

end