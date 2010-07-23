task :deploy do
  `git pull`
  `git push heroku master`
  `heroku rake import`
end