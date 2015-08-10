## Ellevate React Challenge

### Rails Setup
Please pull this repository locally and run these commands to get the application up and running.

1. `bundle` to install all required gems.
2. Set the username of your postgres user in `config/database.yml`.
3. Use these commands to create, setup and seed the database: `rake db:create db:migrate db:seed`

### React Setup
1. `npm install` to install React dependencies

### Structure
The application is a relatively straightforward Rails app built around a blog.

#### Models
There are three main models in this application:

1. `Posts` which contain the blog posts.
2. `Authors` which contains the authors of the posts.
3. `Tags` which contains the tags for the posts.
4. `Comments` which contains the comments for the posts.

There is an additional table `Posts_Tags` that contains the connection between a `post` and `tag`.

This is the relationship of the tables:

![](https://raw.githubusercontent.com/EllevateFinancial/Rails-Challenge/master/public/db_schema_with_comments.png)

### Tasks

These are the tasks we'd like you to complete:

1. On the posts index and individual post page there is a static block of content in a `<p class="lead"></p>`. We'd like you to replace the static lead paragraph and replace it with the first paragraph from each post and have it structured and styled in the same way.
2. The date for each post says "Posted on August 24, 2013 at 9:00 PM". We'd like you to update the date to show the proper date and time that the post was made in the Eastern timezone.
3. Currently, to show the first and last name together in the views we had to use some pretty gnarly code (`<%= [post.author.first_name, post.author.last_name].join(' ') %>`). We'd like you to refactor that view code (and any other code that needs to be rewritten/written) to make this view a bit more clear, without logic in the template. Additionally, on the new post page, instead of just showing the last name in the list of authors, please update the code to show the list of names in this format: "Michael Smith".
4. Currently there is no subhead field on the input form on the new posts page. Please add a form field for that database field. Additionally, please make an update to the view to showcase the subhead in a semantic way.
5. Create a new React component that should render below the post body on individual post pages. The component will display a list of existing comments, and a form for new comments.
6. Make an AJAX request (you can use jQuery) to fetch the existing comments from the database. These will be returned in JSON format. Use this data to populate the list of comments in the React component.
7. Create an HTML form in the React component that includes fields for name, email, and comment text and a submit button. Clicking the submit button should add the comment to the list of comments, as well as submit the data to the database using AJAX.

### Good Luck! We hope that you enjoy what we hope is a relatively "real world" challenge!
