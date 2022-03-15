!TODO!:
[x] Layouts application has Logout buttom pre-placed 
[x] If statement for logout button, show 
[x] lOGIN
[x] User authentication
[] CSS Styling/bootstrap
[x] file attachment
[] LAST: Setup HEROKU (https://entr451.com/deployment-with-heroku/)

Errors:
{}  if post has no image, will still error
{} Login/Signup does not work as buttons

Assignment link: 
https://entr451.com/homework-4/

ASSIGNED TODO: 

6 points) User Authentication
[x]When creating new users, save a 1-way encrypted hash of the password using Bcrypt.
[x]Complete the login form
[x]Use the appropriate form input types when dealing with any password data.
[x]In the sessions controller, authenticate the user by email and password. If successful, "log them in" (i.e. assign the user's id to the session hash) and redirect to the places index. If unsuccessful, redirect back to login.
[x]Use @current_user to conditionally show the login/signup links or a logout button (<%= button_to "Logout", "/sessions/logout", method: :delete %>). You will first need to assign @current_user in the global application controller.
[x]In the sessions controller, "logout" a logged-in user (i.e. remove the user's id from the session hash) and redirect to login.
(3 points) User Authorization
[x]Only show the new post form to logged-in users (i.e. if there is a @current_user).
[x]Assign new posts to the logged-in user (aka @current_user).
[x]Only show posts created by the logged-in user (aka @current_user). Hide all other users' posts. (Note: logged-out users should also not be able to see other users' posts).
(5 points) Frontend with Bootstrap
[x]Install Bootstrap including both the <link> (in the <head> before any custom stylesheets) and the <script> (just before the closing </body>).
[x]Add Bootstrap's navbar component (any version). Move the relevant links (e.g. "Home", "Login", "Signup", "Logout") into the navbar.
[x]Wrap the <%= yield %> content in a Bootstrap .container.
[]Using the Bootstrap button component, style the links to forms and the form submit buttons.
[]Use the Bootstrap grid for posts (3 posts per row on large screens, stacking on small screens). See wireframe.
[]Use the bootstrap spacing (margin or padding) as needed, but at least twice (not counting the navbar).
(3 points) File Attachment
[x]Configure the application for uploads:
[x]uncomment the image_processing gem in the Gemfile
[x]run rails active_storage:install to create the migrations
[x]then run rails db:migrate to execute the migrations
[x]in both config/environments/development.rb and config/environments/production.rb, tell the application to use the :local service for uploading files (i.e. config.active_storage.service = :local)
[x]Enable attachments in the Post model.
[x]Add a new field to the posts form for uploading an image (form.file_field).
[]If a post has an attached image (post.image.attached?), display the attached image (url_for(post.image)).

(2 points) Deployment with Heroku
[]Follow the steps to connect to Heroku and deploy your app (https://entr451.com/deployment-with-heroku/)
[]Once live, add the URL to your live heroku website in the README.md file of your app.




Terminal commands:
rails db:setup (To set up databases)

rails db:reset (To refresh databases - must be "logged out")

heroku run rails db:migrate (Migrate databases once HEROKU is set up)