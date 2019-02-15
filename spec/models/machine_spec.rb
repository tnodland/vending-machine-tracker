require 'rails_helper'

describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
    it { should belong_to :owner }
    it { should have_many :snacks }
  end

  describe 'methods' do
    it "should average the price of it's snacks" do
      owner = Owner.create(name: "Sam's Snacks")
      dons  = owner.machines.create(location: "Don's Mixed Drinks")
      cream = dons.snacks.create(name: "Cream soda", price: 1.00)
      root = dons.snacks.create(name: "Root Beer", price: 2.00)

      expect(dons.average_price).to eq(1.50)
    end
  end
end
