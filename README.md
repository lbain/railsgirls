# railsgirls


Getting started with the Rails Girls App.  Walk through of steps found at http://guides.railsgirls.com/app/

## Step 3: Design
### HTML - HyperText Markup Language
HTML is the language that browsers (Google Chrome, Firefox, Safari) use to display content. There are many "words" (tags) you can use and we'll cover some of them as we go. So far we've used:

* `link` - connects assets to your page
* `div` - a container for other content
* `a` - links to another page
* `ul` - unordered list, needs list elements to work
* `li` - list element, must be part of a list

### ERB - Embedded Ruby
Mixed in with our HTML is Ruby code. How does the server know what to execute as Ruby and what to serve up as HTML? There are a few ways to do this, but for our project (and many Rails projects) we use `<%= RUBY CODE HERE %>` to tell the server when we're using Ruby code. The server executes this code as **Ruby** code and then **embedds** it in the existing HTML.

### CSS - Cascading Style Sheets
CSS is what makes websites pretty. HTML keeps track of the *contents* on the page, CSS keeps track of how that page *looks*. We won't be working with CSS too much, but it can be pretty powerful.

### Resources
[http://learn.shayhowe.com/html-css/](http://learn.shayhowe.com/html-css/)