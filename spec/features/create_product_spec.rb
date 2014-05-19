require 'spec_helper'

feature 'create a product' do
  visit root
  expect(page).to have_content "Add a new product"
  expect(page).to have_content 'Name'
  fill_in "Product Name", with: "Something"
  fill_in "Product Type", with: 'Something else'
  click_button 'Submit'
  expect(page).to have_content 'Product submitted'
end
