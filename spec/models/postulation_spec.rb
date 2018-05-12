require "rails_helper"

RSpec.describe Postulation, type: :model do
  context "relationships" do
    it { should belongs_to(:user) }
    it { should belongs_to(:benefit) }
  end

end