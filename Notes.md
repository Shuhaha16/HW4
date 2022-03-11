Why did the readme get an (i)?

Terminal commands:
rails db:setup (To set up databases)

rails db:reset (To refresh databases - must be "logged out")

heroku run rails db:migrate (Migrate databases once HEROKU is set up)

TODO:
-Layouts application has Logout buttom pre-placed
-lOGIN
-User authentication
-CSS Styling/bootstrap
LAST: Setup HEROKU (https://entr451.com/deployment-with-heroku/)


Assignment: 
https://entr451.com/homework-4/

6 points) User Authentication
When creating new users, save a 1-way encrypted hash of the password using Bcrypt.
Complete the login form
Use the appropriate form input types when dealing with any password data.
In the sessions controller, authenticate the user by email and password. If successful, "log them in" (i.e. assign the user's id to the session hash) and redirect to the places index. If unsuccessful, redirect back to login.
Use @current_user to conditionally show the login/signup links or a logout button (<%= button_to "Logout", "/sessions/logout", method: :delete %>). You will first need to assign @current_user in the global application controller.
In the sessions controller, "logout" a logged-in user (i.e. remove the user's id from the session hash) and redirect to login.
(3 points) User Authorization
Only show the new post form to logged-in users (i.e. if there is a @current_user).
Assign new posts to the logged-in user (aka @current_user).
Only show posts created by the logged-in user (aka @current_user). Hide all other users' posts. (Note: logged-out users should also not be able to see other users' posts).
(5 points) Frontend with Bootstrap
Install Bootstrap including both the <link> (in the <head> before any custom stylesheets) and the <script> (just before the closing </body>).
Add Bootstrap's navbar component (any version). Move the relevant links (e.g. "Home", "Login", "Signup", "Logout") into the navbar.
Wrap the <%= yield %> content in a Bootstrap .container.
Using the Bootstrap button component, style the links to forms and the form submit buttons.
Use the Bootstrap grid for posts (3 posts per row on large screens, stacking on small screens). See wireframe.
Use the bootstrap spacing (margin or padding) as needed, but at least twice (not counting the navbar).
(3 points) File Attachment
Configure the application for uploads:
uncomment the image_processing gem in the Gemfile
run rails active_storage:install to create the migrations
then run rails db:migrate to execute the migrations
in both config/environments/development.rb and config/environments/production.rb, tell the application to use the :local service for uploading files (i.e. config.active_storage.service = :local)
Enable attachments in the Post model.
Add a new field to the posts form for uploading an image (form.file_field).
If a post has an attached image (post.image.attached?), display the attached image (url_for(post.image)).
(2 points) Deployment with Heroku
Follow the steps to connect to Heroku and deploy your app (https://entr451.com/deployment-with-heroku/)
Once live, add the URL to your live heroku website in the README.md file of your app.