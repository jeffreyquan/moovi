# Moovi - A Movie App

## Table of Contents
* [Introduction](#introduction)
* [How to get started](#how-to-get-started)
* [Motivation](#motivation)
* [Technologies](#technologies)
* [Key Features](#key-features)
* [Learnings](#learnings)
* [Acknowledgement](#acknowledgement)
* [Future Developments](#future-developments)
* [Screenshots](#screenshots)

<a name="introduction"></a>
## Introduction

This project is a web app that allows users to make lists of actors, directors and movies, which can be shared with everyone or private. It utilises The Movie DB's API. Check out their awesome [website](https://www.themoviedb.org/?language=en-US).

Feel free to test out my app [here](https://moovi-app.herokuapp.com/). Make sure to create an account to start making lists.

<a name="how-to-get-started"></a>
## How to get started

Feel free to clone this repository.

To run locally, run the following in the root directory in the terminal:
1. `npm install`
2. `bundle install`
3. `rails db:create`
4. `rails db:migrate`
5. `rails db:seed`
6. `rails s`

<a name="motivation"></a>
## Motivation

The aim of this project was to deliver an app that:

* Implemented at least 3 models, with associations
* Is a CRUD system in Rails
* Handles invalid data
* Uses Gems
* Has basic authentication and authorisation
* Is deployed to [Heroku](https://www.heroku.com/)

This was my second project at General Assembly's Software Engineering Immersive course at Sydney.

<a name="technologies"></a>
## Technologies

* Ruby on Rails
* [Bootstrap](https://getbootstrap.com/)
* SCSS
* JavaScript
* jQuery
* [TMDB's API](https://www.themoviedb.org/documentation/api)

## Gems

* [PgSearch](https://github.com/Casecommons/pg_search) - added search functionality to the app for full and partial text
* [httparty](https://github.com/jnunemaker/httparty) - used with TMDB's API
* Bcrypt - for user authentication

## Special Icons

* [Font Awesome](https://fontawesome.com/)

<a name="key-features"></a>
## Key Features

* **Discovery home page** - explore movies, actors or directors you've never seen before.
* **Custom lists** - create custom lists, each with one of the following categories: movies, actors or directors. These can be shared with everyone or private.
* **Adding movies from TMDB** - simply use the search bar in the movies page and you can add movies from TMDB, which will include the director's profile and some of the casts.
* **Search** - allows users to search the site for partial matches to their query.
* **Associated content** - navigate to any movie, actor or director, you'll be able to see related content, such as trailers and other movies.

<a name="Learnings"></a>
## Learnings

* Model-View-Controller in the context of Ruby on Rails
* Manipulation of hashes and arrays in Ruby
* Use of multiple models and associations
* Styling using Bootstrap
* Form creation and validation
* Using and navigating TMDB's API

<a name="acknowledgement"></a>
## Acknowledgement

* @amandachau36 - for helping me with deployment to Heroku and seeding the database on the platform
* @anapgsilva - for showing me how to implement full text PgSearch and navigate APIs
* @aleksanderbrymora - for helping me with implementing the search panel in the navigation bar
* [TDMB](https://www.themoviedb.org/?language=en-US) - for their user-friendly API and incredible data

<a name="future-developments"></a>
## Future Developments

* **Filters** - adding filters for movies (e.g. year 2000 onwards) to allow for easier navigation
* **Reviews and Ratings** - adding a reviews and ratings section where users can post their reviews and rate the movies out of five stars.

<a name="screenshots"></a>
## Screenshots

#### Home

![Home page](/app/assets/images/Discovery.png)

#### Movies

![Movies page](/app/assets/images/Movies.png)

#### Actors

![Actors page](/app/assets/images/Actors.png)

#### Directors

![Directors page](/app/assets/images/Directors.png)

#### Genres

![Genres page](/app/assets/images/Genres.png)

#### Public Lists

![Public lists page](/app/assets/images/Public_Lists.png)

#### TMDB Search Results

![TMDB Search Results page](/app/assets/images/TMDB_Search_Results.png)
