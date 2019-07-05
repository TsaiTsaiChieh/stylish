# Week 2 Part 2

## Build User APIs

It's time to build member system for our website.

### Build User Sign Up APIs

Refer to [User Sign Up API](https://github.com/AppWorks-School/API-Doc/tree/master/Stylish#user-sign-up-api), and build this API. You should use [crypto hash](https://nodejs.org/api/crypto.html#crypto_class_hash) to generate access token for front-end.

### Build User Sign In APIs

Refer to [User Sign In API](https://github.com/AppWorks-School/API-Doc/tree/master/Stylish#user-sign-in-api) to build this API for front-end.

#### Native Email/Password Authentication

In the end, you will build two method for user authentication; while we can only implement native email/password authentication mechanism just for now.

Every time user sign in successfully, you should update and response new access token and expired time to front-end.

### Build User Profile APIs

Refer to [User Profile API](https://github.com/AppWorks-School/API-Doc/tree/master/Stylish#user-profile-api), build this API for front-end. We should compare received access token to the record in our database to make sure it's an authorized request.
