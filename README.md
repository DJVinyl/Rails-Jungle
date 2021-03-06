# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Screenshots

!["Image of Jungle"](https://raw.githubusercontent.com/DJVinyl/Rails-Jungle/master/Pictures/Image%20of%20Jungle.png)

## Functional Requirements

This section lists the functional specs that our mentors will be sampling when evaluating your project submission.

____________________________

## Feature: Sold Out Badge

- Major: When a product has 0 quantity, a sold out badge should be displayed on the product list page
- Minor: Should ideally be implemented as a question/boolean method in view helper and/or Product model

## Feature: Admin Categories
- Major: Admin users can list and create new categories
- Major: Admins can add new products using the new category
- Major: Restful routes (resources) should be used, and there should be no extra, unused routes exposed
- Bonus: All admin controllers inherit from Admin::BaseController (or similarly named) abstract controller, containing the authentication filter

## Feature: User Authentication
- Major: As a Visitor I can go to the registration page from any page in order to create an account
- Major: As a Visitor I can sign up for a user account with my e-mail, password, first name and last name
- Major: As a Visitor I can sign in using my e-mail and password
- Major: As a User I can log out from any page
- Major: As a User I cannot sign up with an existing e-mail address (uniqueness validation)
- Major: Passwords are not stored as plain text in the database. Instead, has_secure_password is used in the User model, leveraging the bcrypt gem

## Enhancement: Order Details Page
- Major: The order page contains items, their image, name, description, quantities and line item totals
- Major: The final amount for the order is displayed
- Minor: The email that was used to place the order is displayed
- Minor: As a Visitor I can place an order (i.e. without logging in and therefore without an e-mail address). The original functionality from the inherited code (even though it is not realistic) should therefore not be suppressed.
## Bug: Missing Admin Security
- Major: User must enter HTTP auth login/password to access admin functionality
- Bonus: Should ideally be implemented in an abstract top-level class for admin controllers (e.g., Admin::BaseController which the other concrete admin controllers inherit)
## Bug: Checking Out with Empty Cart
- Major: When the cart is empty and the user goes to the carts#show page, instead of displaying the contents and a stripe checkout button, display a friendly message about how it is empty and link to the home page
