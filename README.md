# railsgirls


Getting started with the Rails Girls App.  Walk through of steps found at http://guides.railsgirls.com/app/

## Step 5: Finetune the routes
### No more public!
The `public` directory keeps files that are displayed without the server needing to process anything. Things like the error pages (you can see `404.html` and `500.html` files are there), and a static home page, like the one Rails gives you by default. We had to delete the `public/index.html` file since we want Rails to use our file (`views/images/index.html.erb`) and not the Rails default `index.html`

### Routes
The `routes.rb` file lets you tell Rails what URL path goes to what controller (and thus, what view file is displayed). Our change:
`root :to => redirect('/ideas')`
told rails to redirect the `root` path (that's just `localhost:3000/` without anything after it) to the `/ideas` path. That `ideas` path is handled by the other rule in `routes.rb` - `resources :ideas`. You can always see what routes are available by running `rake routes` in the command line.

### Resources
A short explanation of the `rake routes`  [http://stackoverflow.com/a/7054021/863846](http://stackoverflow.com/a/7054021/863846)

A long explanation of Rails routing [http://guides.rubyonrails.org/routing.html](http://guides.rubyonrails.org/routing.html)
