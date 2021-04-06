require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

  before :each do
    @category = Category.create! name: 'Apparel'
    @category.products.create!(
        name:  'Hat',
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
  end

  scenario "Navigates into Product" do
    # ACT
    visit root_path
    click_on 'Details'

    # DEBUG / VERIFY
    expect(page).to have_text 'Quantity'
    save_screenshot
  end

end