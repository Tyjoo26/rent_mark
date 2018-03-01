# README

#Welcome to Rent Mark

Rent Mark is a Real Estate Property Management Web Application built on Ruby on Rails. The app has a User model that has a Renter role and a Manager role.

Each role has access to different aspects of the application.

**https://rentmark.herokuapp.com/**

Ruby Version
Ruby 2.4.2

####Renter
Sample Renter Credentials:
```
email: francisco_kuphal@mullerhand.info
password: "123"
```

A Renter can log into the resident portal via Google OAuth or by signing in traditionally via email and password. **By default, a visitor who logs in with OAuth will be assigned a password of "123". The newly created renter will be able to edit password details from the dashboard.** Please note that a visitor who creates an account with OAuth will not have an associated Unit that will display in a User Dashboard. However, a visitor will be able to RSVP to available property events by viewing available events. Additionally, a renter can utilize a Stripe API call to pay their rent securely through the Stripe Payment Processing Service.

Finally, a renter can use the Contact Us functionality to send a Service Request to management.

####Manager
Sample Renter Credentials:
```
email: jchang4255@gmail.com
password: "123"
```

A Manager has the same log in abilities as a Renter, but will have much more functionality once they access their portal. They have access to a Manager dashboard which allows them to go to a Units, Events, and Users dashboard with CRUD functionality.

##To run RentMark locally, please follow these steps.
git clone git@github.com:Tyjoo26/rent_mark.git

rake db:create db:migrate
rake seed_db

**In order to create a Manager role, run rails console, find a User and update it with User.find(id).update(role:1)**
