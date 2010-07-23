task :deploy do
  `heroku push heroku master`
  `heroku rake import`
end