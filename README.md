# Instagram Challenge

This educational project is a work in progress.  The idea is to create an “Instagram clone.”

## Key Technologies Used

* Ruby
* Ruby on Rails
* PostgreSQL
* Heroku
* Amazon AWS S3

## Tests

Testing with RSpec and Capybara using FactoryGirl: `$ rspec`

## Status - Development

The app works locally, with AWS credentials stored in an ENV variable.  To run the app:

1) Create databases (test and development)
2) `$ rails s`
3) Visit http://localhost:3000

## Status - Production

The app works online.

## TODO

1)  More tests
2)  Check authorizations for Pictures and Comments (for edit, destroy, etc.)
3)  Design and implement "Like" feature
4)  Implement edit/destroy action for comments
5)  Style and improve the interface
6)  Improve text used in the app and make it consistent
7)  Cleanup and refactor code
8)  Adjust AWS permissions (locked down as much as possible without breaking app)
9)  Add to user names and avatars (use "papercrop" gem) to app and use them where appropriate
10) Repeat 5-7, above
