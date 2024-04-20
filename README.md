# Coding Resources App

## Link: https://coding-resources-sei53.herokuapp.com/

Project Summary:
Full-stack database backed application for coding resources to assist costudents with learning

As we start this course I have noticed that people know about so many resources that could be beneficial to many people learning about coding.
so why not store them in one place and we can keep growing it throughout the course

## Tech Stack
HTML, CSS with Bootstrap, JavaScript with DOM Manipulation, Ruby, Sinatra


## Step 1
Start - create CRUD features
  - Create database
    - create resource table with resource name, description, languages, url
    - create user table with user, email, password digest
    - link database to CRUD app

  - Create user Sign up
    - if email does not exist advise to sign up
  
  - Create user login with email, password and password digest
    - if logged in show logged in as user
    - if password is incorrect advise
    - if user email already exists advise

  - create user log out functionality

  - Create ability to add resources
  - create ability to delete resources
  - create ability to update resources
  - create ability to filter resources language
  - sanatize data to prevent data injection

## Step 2
  - Deploy to Github
  - Deploy to Heroku

## Step 3
Improve functionality
  - change name of resource into hyperlink, opening in a new window
  - make functional on a variety of screens
  - drop down list for language selection - replaced with carousel

## Step 4
  - CSS
    - Improve look, layout and style

## Step 5
Fun and Easter Eggs
  = images on home page have unique reactions to mouseover events
  - on failed log in advised to sign up but unable to click on sign up link as it moves away from mouse (click sorry to go back)

# Step 6
Known Bugs
  checked boxes blank when editing - fixed
  reset of carousel when sorting languages - fixed
  background color fills only 100view height - fixed
  data injection issue in sort_resources function - fixed
