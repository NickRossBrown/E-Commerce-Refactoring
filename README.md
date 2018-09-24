# E-commerce site

###### Epicodus: Ruby Independent Project 09/23/2018
###### By Nicholas Brown

## Description

 A refactoring and code cleanup exercise for a website where a dev left half made website only one commit. An employer given a list of requested features for the site.

## Design Features Requsted From

####Ajax Features
* ~~Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.~~
* ~~Users should be able to click on a product and show/hide the product detail using AJAX.~~ The product detail should include an image, the description, and any other fields you choose to add.
* ~~Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.~~
#### Additional Features
* ~~Ensure that users can't order a negative number of items.~~
* Add flash messages for signing up, signing in and signing out.
* ~~Add product update and delete functionality for admins.~~
* Add admin flash messages for adding, updating and deleting products.
* ~~Allow other than whole dollar amounts for admin product creation (for instance, 3.99).~~
* ~~Add product validations.~~
* Add Stripe so users can pay when finalizing orders.
* Add password validations to ensure a user's password is sufficiently complex.
* ~~Add admin links to navbar so admins can easily add, update and delete products.~~
* Fix the row height for products, which can quickly become uneven.
* Add integration testing for AJAX functionality.
* Add further AJAX functionality where it might be useful.




## Setup/Contribution Requirements

1. Clone the repo
```
git clone <github website>
```
1. bundle Gems
```
$bundle install
```
1. database
```
rake db:create
rake db:migrate
```
1. host app locally
```
$rails s
```
1. insert localhost with <port number> given in terminal into a webpage's URL
```
localhost:<port number>      ---example--- localhost:3000
```

## Technologies Used

* Ruby 2.5.0

### License

*{This software is licensed under the MIT license}*

Copyright (c) 2018 **_  Nick Brown  _**