require 'rails_helper'

RSpec.describe "As a user" do
  context "When I visit a vending machine's show page" do
    it "should see all of the snacks associated to that machine" do
      owner = Owner.create(name: "Sam's Snacks")
      dons  = owner.machines.create(location: "Don's Mixed Drinks")
      dons.items.create(name: "Cream soda", price: 1.00)
    end
  end
end
