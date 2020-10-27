# Pair Programming Challenge - Rails Pumpkin Carver

Today we're building a website dedicated to pumpkin carving tourism on farms. Someone already built a way to add and view farms however they decided to retire to a quiet bucolic life before they could finish. It's up to you to complete the website by adding a page to show off carved pumpkins and some validations to make sure only valid pumpkin farms get added.

## Getting Started

First make sure to **fork** and clone the project. Add your partner to the project through settings -> manage access. Go to the project directory and run `bundle install` and `rails db:migrate`.

You'll notice you already have several routes and views for farms as well as a farm model with attributes. You won't need to do any work on the existing controllers or views , although you can change anything to your liking. You will however need to do some additional work in the `Farm` model.

Farms already have these attributes:

```
name => the name of the farm
img_url => a link to an image for this farm
zip_code => a location for the farm
description => a description of the farm
```

Use validations to enforce these rules:

### Name

Make sure the name is present, unique, and that it includes the word "Farm".

### Zip Code

The zip code location needs to be present, be numerical, and be exactly 5 characters in length.

### Img_URL

Make sure that only validly formatted web-links to images are accepted. Feel free to search online for regex to make this work (the regex is less important than the validation itself, don't spend a lot of time on it).

### Description

The description needs to be between 20 and 100 characters long.

## Pumpkin Model

Generate a pumpkin model. These are carved pumpkins that `belong_to` a farm. Pumpkins ought to have these attributes:

```
name: string => the name of a jack o lantern
img_url: string => takes in an image of a carved pumpkin
what else do we need here to make sure a pumpkin belongs to a farm???
```

## Pumpkin Controller

Create a controller for pumpkins. You'll need routes for `new`, `create`, and `index`. Additionally you'll need views for `new` and `index`.

The index page should show every pumpkin with its name and image along with a link to the farm the pumpkin was carved at.

The new page should have a form for a new pumpkin. In order to link a pumpkin to a farm, utilize a `collection_select`. Be sure to look for specific documentation online or else follow the examples in labs for it.

You can also forgo the `collection_select` if you decide to use nested routes or other methods. In the end, find some way to properly associate a pumpkin with a farm of the user's choosing.

## BONUS: PumpkinRating Model

Create an additional model for a pumpkin rating that belongs to a pumpkin (pumpkins have many pumpkin ratings). The model only needs a `rating` and a `pumpkin_id` attribute.

Validate the rating so that it's a number between 1 and 5.

On the pumpkin index page, next to every pumpkin include a form to allow anyone to submit a rating for that pumpkin. In addition to that pumpkin's normal information, also show the average rating for that pumpkin and the number of times it's been rated.
