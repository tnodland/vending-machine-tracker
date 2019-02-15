require 'rails_helper'

RSpec.describe 'as a visitor' do
  context "when i visit a snacks show page" do
    it "should see info about that snack" do
      owner = Owner.create(name: "Sam's Snacks")
      dons  = owner.machines.create(location: "Don's Mixed Drinks")
      cream = dons.snacks.create(name: "Cream soda", price: 1.00)
      root = dons.snacks.create(name: "Root Beer", price: 2.00)

      visit snack_path(cream)

      
    end
  end
end
