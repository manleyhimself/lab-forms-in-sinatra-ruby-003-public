---
tags: forms, sinatra
languages: ruby, html
---

Before completing this lab you should be familiar with [HTML Forms](http://flatironschool.s3.amazonaws.com/curriculum/lecture_keynotes/forms.key), Sinatra, and the params hash.

## Objective

Create an edit form for the songs resource, utilize the params hash.

## Bootstrap the songs app

1) Clone the repository

`git clone git@github.com:flatiron-school/lab-forms-in-sinatra.git`

2) cd into the directory

`cd lab-forms-in-sinatra`

3) Bundle gems

`bundle`

4) Create the database schema

`rake db:migrate`

## Create the edit route

Create an 'edit' route in app.rb and pass it a song id. This route is going to render the songs/edit template, so also create a song instance variable to pass to the view.

## Create the edit view

Create an edit view template in views/songs and build a form with named controls. The purpose of this form is to edit/update existing songs. These fields should have the songs current attributes set as their value so that they can be properly updated.

## Create the update route

Create an 'update' route in app.rb. The is is the route where you will post the data from the song edit form. Inside the controller block, use the params hash to update and save the changes to the song.

## Add the route action to your form

Make sure that the 'action' attribute of your form points to the correct route, and that the method is correct.

## Add the edit link

Add a link on each students profile that directs users to the edit view. Students should be now be editable from here. Edit one.

Good job. ;)
