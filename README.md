# README

### Set me up

1. Fork, clone, bundle, rake db:create db:migrate
1. Run RSpec
1. rails s
1. Navigate to `/plants`

### 1. Learn about RESTful / Resourceful routes and flow through an app

#### Turn a resource into handrolled routes

1. Comment out line 2 in the `routes.rb` file
1. Run RSpec
1. Address the first routing error by handrolling the route.
1. Run RSpec again.
  * If you continue on to the next expected routing error, continue addressing routing errors and rerunning RSpec for all the routes.
  * If you feel that you have "gone backwards" and made your code worse, undo your last change in the `routes.rb` file and rerun RSpec, and then try again handrolling the route.
  * ***ONLY make changes in the `routes.rb` file***

#### Using the following (in your sequence diagram)...

  * Browser
  * Routes (indicate verb and route)
  * Controller (indicate action)
  * Model
  * View

#### Make sequence diagrams of each of these actions or sets of actions

  1. View an index of plants
  1. Create a new plant
  1. Update a plant
  1. Delete a plant

### 2. Learn about Partials and Validations

Some pre-questions:

* Where have we used partials in the past?
* Where do you save a partial for use with a group of related views?
* Where do you save a partial for use with different groups of views?
* How do you call for a partial to be rendered?
* How do you pass variables into a view?
* Using ActiveRecord, how do you validate for the presence of an attribute in the database?
* How and where are error messages stored?
* How do you create custom validations?
* How do you render validation errors in the view?
* How do you add an error message to a specific attribute?
* How do you add a generic error message (not associated / prefaced with a specific atrribute)?

##### Lets do some things!

1. Run RSpec to ensure that all is well in the land.
1. Pull the two forms into a single plant form to rule them all.
1. Have the button on the forms say either "I collected that!" OR "Oops, this is what I meant" for the new and edit forms respectively.
1. Add validations to ensure presence of both common name and genus species.
  * Add a test, follow the errors to complete adding validation and rendering.
  * Error messages should be in a div with class `alert alert-danger`.
1. Imagine a world in which you have many other resources. Pull the error rendering into a partial that could be shared between resource views.
1. Add custom validations for genus species.
  * "Genus species should have at least one space (separating the genus and species)"
  * BONUS: if the common name is present and the genus species is missing, the error message should say "Would you like to look up the genus species of (common name) on Wikipedia?" with (common name) substituted for what was entered in the common name field, and substituted for dandylion in this link: `http://en.wikipedia.org/wiki/Special:Search?search=dandylion&go=Go`. Hint - how do you allow for spaces in the common name?

### 3. Nesting and Active Record Associations (one to many)

1. Run RSpec to ensure all is well
1. Un-pend the spec in Recipes
1. Get all the tests to pass
1. Once your app is finished, `rake make_my:recipes`
1. Open Rails console
1. In console, query to find all the recipes for Yarrow
1. In console, query to find all the culinary recipes
1. In console, query to find all the Yarrow medicinal recipes

BONUS: Create a spec and feature for:
* Visit `/recipes` and create a new recipe on this page, but this time choose a pre-existing plant for a drop-down (collection select)
* Creation will direct you back to the /recipes to create a new recipe again (for mass addition of recipes)
