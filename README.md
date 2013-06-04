# railsgirls


Getting started with the Rails Girls App.  Walk through of steps found at http://guides.railsgirls.com/app/

## Step 2: Create Idea scaffold
### Explanation of commands
```
$ rails generate scaffold idea name:string description:text picture:string
```
This creates a bunch of stuff (more on that in the next section of the readme) for a single concept - in this case the concept of an "idea".  For us, ideas have 3 aspects: a name, a description, and a picture. We asked rails to keep track of the "idea" concept in the database, as well as create the pages you saw at [http://localhost:3000/ideas](http://localhost:3000/ideas).

```
$ rake db:migrate
```
With the previous `rails generate scaffold` command we asked rails to track stuff in the database.  Now we have to update the database for rails to give it access to the database information it needs.

```
$ rails server
```
Start up the rails server.

### Explanation of the scaffold command
Rails is pretty awesome. This `scaffold` command is part of why programmers can be so fast when working with rails - it does a lot of work so you don't have to. Let's look at some new directories and files you made when you used the `generate scaffold` command:

* app/assets/javascripts/ideas.js.coffee
* app/assets/stylesheets/ideas.css.scss
* app/assets/stylesheets/scaffolds.css.scss
* app/controllers/ideas_controller.rb
* app/helpers/ideas_helper.rb
* app/models/idea.rb
* app/views/ideas/
* db/migrate/
* db/schema.rb
* test/controllers/ideas_controller_test.rb
* test/fixtures/ideas.yml
* test/helpers/ideas_helper_test.rb
* test/models/idea_test.rb

Woah! That's a lot of files you didn't need to make! We won't be working with all of these files, but I'll just mention a few of them.

`app/models/idea.rb` is the file that keeps track of the **model** information for the **idea** concept. We'll be working with this file when we add in photos.

`app/controllers/ideas_controller.rb` helps **control** (process) all the requests the server gets for the pages about **ideas**. If you open it now you'll see that it has a lot of code there already (which the `scaffold` command generated for you!) to handle all the requests you were just making to add, create, edit, and delete ideas on your site.

`app/views/ideas/` is a directory that keeps all of the **views** associated with the **ideas** concept. We'll be working here in the next step, but take a quick peak now to see what `scaffold` gave you. Pay special attention to the names of the files, we'll talk about those later.
