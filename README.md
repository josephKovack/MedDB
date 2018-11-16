Setup
Copy `config/database.yml.template` to `config/database.yml` and fill in your database credentials. If you have your MySQL username and password exported to environment variables MYSQL_USER and MYSQL_PASS you don't need to do anything more than copy the template.

Then run
```
bundler install
rails db:create
rails db:schema:load
```
Make your own branch as not to mess up the master
branch makes a branch
checkout switches to the branch so you are not workin in master
```
git branch [name of branch]

git checkout [name of branch]

```
After you are done with your changes you can use these commands to push your work to the repository
```
git add .

git commit -m "Commit message here"

git push origin [branch name]

```

To install gems and to create and migrate the database.

TODO: This stuff

This README would normally document whatever steps are necessary to get the application up and running.

Things you may want to cover:

Ruby version

System dependencies

Configuration

Database creation

Database initialization

How to run the test suite

Services (job queues, cache servers, search engines, etc.)

Deployment instructions
