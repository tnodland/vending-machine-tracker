require 'rails_helper'

RSpec.describe "As a user" do
  context "When I visit a vending machine's show page" do
    it "should see all of the snacks associated to that machine" do
      owner = Owner.create(name: "Sam's Snacks")
      dons  = owner.machines.create(location: "Don's Mixed Drinks")
      cream = dons.snacks.create(name: "Cream soda", price: 1.00)
      root = dons.snacks.create(name: "Root Beer", price: 2.00)

      visit machine_path(dons)

      within "#snack-#{cream.id}" do
        expect(page).to have_content (cream.name)
        expect(page).to have_content (cream.price)
      end

      within "#snack-#{root.id}" do
        expect(page).to have_content (root.name)
        expect(page).to have_content (root.price)
      end
      save_and_open_page
    end

    it "should see the average price of all snacks" do
      owner = Owner.create(name: "Sam's Snacks")
      dons  = owner.machines.create(location: "Don's Mixed Drinks")
      cream = dons.snacks.create(name: "Cream soda", price: 1.00)
      root = dons.snacks.create(name: "Root Beer", price: 2.00)

      visit machine_path(dons)

      # expect(page).to have_content
    end
  end
end
