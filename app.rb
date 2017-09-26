require("sinatra/activerecord")
require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/question")
require ("./lib/survey")
require("pg")

get('/') do
  @surveys = Survey.all()
  erb(:index)
end

post('/') do
  name = params['name']
  new_survey = Survey.create({:name => name})
  @surveys = Survey.all
  erb(:index)
end

get('/surveys/:id') do
  @survey = Survey.find(params.fetch("id").to_i())
  erb(:survey_edit)
end

patch("/surveys/:id") do
  name = params.fetch("name")
  @survey = Survey.find(params.fetch("id").to_i())
  @survey.update({:name => name})
  @surveys = Survey.all()
  erb(:survey_edit)
end

get('/surveys/:id') do
  question = params["question"]
  id = params["id"]
  @question = Question.find(params.fetch("id").to_i())
  erb(:survey_edit)
end

post('/surveys/:id') do
  question = params["question"]
  id = params["id"]
  new_question = Question.create({:question => question})
  @questions = Question.all
  erb(:survey_edit)
end
