# Feast Beast
Street Food Heat Mapping Software on Rails. Shows where the best venues for street food are in London, on a handy heat map, with the heat weighted to their reviews!

![Night Preview](http://s16.postimg.org/f924hgwhx/Screen_Shot_2015_04_20_at_20_53_27.png)

The purpose of this project was to practice a lot of the techniques/languages/frameworks that we had been practicing over the course. Initially, the project followed TDD well and the tests covered the code completely. However, we had a huge deadline. We simply ran out of time and the following TDD started to prove too slow a progress to achieve what we wanted. The main problem being how to test the APIs that we were accessing: namely- Twitter, Yelp and Instagram. But, we did learn a lot about Rails, APIs and added trimmings like OmniAuth

Having said this, it looks good and works (disclaimer)!

## Technologies Used
- Ruby version 2.2.0
- Ruby on Rails
- OmniAuth
- Geocode/Google Maps
- Twitter, Yelp, Facebook APIs
- JQuery
- Testing with rspec

## Features

- Users can sign up with/without Facebook
- Users can create, review venues
- Venue owners can link instagram,twitter and yelp accounts to the site
- Venue is geolocated on GoogleMaps with a heatmap weighted to the review
- Viewers can change the settings from night to day to see what's about at those times

## Screenshots

![Logo](http://s8.postimg.org/o3kojl13p/Screen_Shot_2015_04_20_at_21_39_48.png)
![Night Preview](http://s16.postimg.org/f924hgwhx/Screen_Shot_2015_04_20_at_20_53_27.png)
![Day Preview](http://s15.postimg.org/yngbq4niz/Screen_Shot_2015_04_20_at_20_54_09.png)

## Improvements
- less reliance on erb. The code heavily relied on erb, which is fine, but we pushed conventional boundaries due to time pressure. So much so that we had a highbrid language where we had html, javascript and ruby all in one line. I suggest we should have started passing JSON objects to the view as an improvement. But as it is, it was very temperamental.
- Lazy Loading. All the data was hidden in the background and revealed when needed. Really, it would be best to Eager Load the whole site, especially since we were pulling in API data.

Any thoughts on what we should have done differently or extra handy things to add in are completely welcome!
