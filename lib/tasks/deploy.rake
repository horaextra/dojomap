task :deploy do
  `git pull`
  `git push heroku master`
  `heroku rake db:migrate`
  `heroku rake import`
end