require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here

    it 'validates Name is present' do
      @category = Category.new(name: "Testing")
      @product = Product.new(name: "T-shirt", price_cents: 9001, quantity: 1, :category => @category)
      expect(@product.name).to be_present
    end

    it 'validates price is present' do
      @category = Category.new(name: "Testing")
      @product = Product.new(name: "T-shirt", price_cents: 9001, quantity: 1, :category => @category)
      expect(@product.price).to be_present
    end

    it 'validates quantity is present' do
      @category = Category.new(name: "Testing")
      @product = Product.new(name: "T-shirt", price_cents: 9001, quantity: 1, :category => @category)
      expect(@product.quantity).to be_present
    end

    it 'validates quantity is present' do
      @category = Category.new(name: "Testing")
      @product = Product.new(name: "T-shirt", price_cents: 9001, quantity: 1, :category => @category)
      expect(@product.category).to be_present
    end

  end
end
