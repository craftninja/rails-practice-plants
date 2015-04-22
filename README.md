# README

### Set me up

1. Fork, clone, bundle, rake db:create db:migrate
1. Run RSpec
1. rails s
1. Navigate to `/plants`

### Learn about RESTful / Resourceful routes

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
