# railsgirls


Getting started with the Rails Girls App.  Walk through of steps found at http://guides.railsgirls.com/app/

## Step 4: Adding picture uploads
### Gems - libraries and open source
A gem is a bundle of code someone wrote (generally not you, but it's great if you do!) that does a specific task without you having to worry abou it. Kind of like getting a taxi so you don't have to deal with driving.

### Uploader
Hey, that `rails generate uploader Picture` looks a lot like that `rails generate scaffold` command from step 2! Yep, sure does. Rails comes with a bunch of things it can do all by itself, we're just using a few of them. This command generates most of what you need to upload files. Keep in mind that you're uploading these files to *your* server, not to facebook, flickr, google docs or anywhere else.

### Ruby to HTML
Last time we talked a little about ERB, we're going to chat a bit about that here too. You added the lines `<%= f.file_field :picture %>` and `<%= image_tag(@idea.picture_url, :width => 600) if @idea.picture.present? %>`, both of these are lines of Ruby code (you can tell because of the `<%= %>` syntax), but both ended up being different HTML elements on the page (as you saw when the page rendered differently). The `file_field` became `<input id="idea_picture" name="idea[picture]" type="file">` and the `image_tag` became `<img alt="file name here" src="/uploads/idea/picture/1/file_name_here.png" width="600">`. These Ruby to HTML lines are something Rails gives you for free. So you don't always have to write out the full HTML (which can be slow and persnickety), you can often just use Ruby code.

### Resources
Check out a bunch of popular gems at [https://www.ruby-toolbox.com/](https://www.ruby-toolbox.com/)

More on using Ruby code to make forms - [http://guides.rubyonrails.org/form_helpers.html](http://guides.rubyonrails.org/form_helpers.html)
