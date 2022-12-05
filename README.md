# How HTTP requests work

First, there needs to be a client (laptop with google chrome installed) and a server (rails server, for example).

Second, the client makes an HTTP request that is made up of:

- URL + PATH
- Verb (GET/POST/PUT/PATCH/DELETE)
- Headers
- Query Parameters (at the end of the url would have a ?param_name=value)
- Body (ideally only present in PUT, PATCH and POST requests)

This request is received by the server, which after processing the request returns a response. This response is often an HTML page, the same HTML page we see in our browser after accessing http://www.google.com for example.

Remembering that when we send a POST, PATCH or PUT, we send the parameters inside the BODY of the request, instead of sending them as Query Parameters.


# How to implement a user action in Rails

- make the route
- Make the controller and the action that the route refers to
- make the view

Remembering that a controller that deals with Meal must be called `MealsController`, and the views of this controller will be in `app/views/meals/`, and all these views will have the name of the actions (eg: index) with the correct format for HTML and ruby ​​terms: `index.html.erb`


# routes.rb

The syntax for creating a route follows the following format:

`verb 'path', to: 'controller#action'`

So some examples:

- get 'about', to: 'pages#about'
- get 'bands', to: 'bands#index'

We can set a root path (landing/homepage) by doing:

`root to: 'controller#action'`

And finally, we also have the route prefixes, which are useful when we are building a link (a href="") from ruby ​​code (link_to):

- `get 'about_us', to: 'pages#about', as: 'about'`

This allows us to link_to "Find out more", about_path


# Controllers & Instance Variables & Params

**Convention over Configuration!**

- Controller **always in the plural** (ex: BandsController),
- View folder **always with the name of the controller** (app/views/bands/)
- Controller **action with a view of the same name** (ex: index) (app/views/ bands/index.html.erb)

Remembering that if you want a variable defined in the action "winners" to be accessible inside the view "winners.html.erb", you need to declare it as an instance variable.

Ex:

- @winners = ['Messi', 'Benzema']

Other than that, every parameter sent by a request is accessible from params. This params works like a hash, so if the parameter sent was "player_name", you access it in the controller/action (or in the view) as params[:player_name].


# Views

To run Ruby code inside the view, you need to use icecream brackets.

- <% code that will be executed but not printed in the HTML %>
- <%= code that will be executed AND ALSO printed in the HTML %>

Remembering that in loops, we don't print the loop itself.. But we usually print something from the block.
