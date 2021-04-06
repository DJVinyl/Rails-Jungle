require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'validates a user must be made with a password and a confirm password' do
      @user = User.new(name: "Test", lname: "Test1", email: "tester@email.com", password: "123456", password_confirmation: "123456");
      expect(@user.valid?).to be true
    end

    it 'validates password and a confirm password must be the same' do
      @user = User.new(name: "Test", lname: "Test", email: "tester@email.com", password: "123456", password_confirmation: "123456");
      expect(@user.password).to eq(@user.password_confirmation)
    end

    it 'validates a users email must be unique include case sensitivity' do
      @user1 = User.new(name: "Test", lname: "Test", email: "tester@email.com", password: "123456", password_confirmation: "123456");
      @user1.save
      @user2 = User.new(name: "Test", lname: "Test", email: "TESTER@email.com", password: "123456", password_confirmation: "123456");
      @user2.save
      expect(@user2.valid?).to be false
    end

    it 'Email, first name, and last name should also be required' do
      @user = User.new(password: "123456", password_confirmation: "123456");
      expect(@user.valid?).to be false
    end

    it 'Password must have a minimum length' do
      @user = User.new(name: "Test", lname: "Test", email: "tester@email.com", password: "1234", password_confirmation: "1234");
      expect(@user.valid?).to be false
    end
  end

  describe '.authenticate_with_credentials' do
    it 'validates a user must be made with a password and a confirm password' do
      @user = User.new(name: "Test", lname: "Test", email: "tester@email.com", password: "123456", password_confirmation: "123456")
      @user.save
      expect(User.authenticate_with_credentials("tester@email.com", "123456")).to be_present
    end
  end


end
