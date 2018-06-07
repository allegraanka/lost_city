# README

Lost City is a web application designed to provide a social, photo-sharing platform for urban exploration (urbex) and the preservation of lost spaces in time. Lost City can be found live at https://lost-city.herokuapp.com/.

Lost City was build in Ruby on Rails (Ruby version: 2.4.1) and vanilla CSS. Ruby gems utilized: Devise (user authentication and security), Paperclip (image upload) and Geocoder (for location-based tagging).

Relational Database: SQLite3, ActiveRecord
Full CRUD functionality for users, posts with image upload (Paperclip gem), and comments.

Implemented UJS/AJAX on event handlers, progressively enhancing user experience by updating comments without page reload.

User authenticity and security (Devise gem): hashed passwords, session time-out, account recovery.

Integrated sun-event API (https://sunrise-sunset.org/api) enabling users to pinpoint the perfect time to shoot for their exact location.
