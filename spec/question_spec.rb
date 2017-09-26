require("spec_helper")
require("question")

describe('#questions') do
  it('will tell which questions are in the survey') do
    test_survey = Survey.create({:name => 'Favorite Food Survey'})
    test_question1 = Question.create({:question => 'What is your favorite cuisine?', :survey_id => test_survey.id})
    test_question2 = Question.create({:question => 'Why?', :survey_id => test_survey.id})
    expect(test_survey.questions()).to(eq([test_question1, test_question2]))
  end
end
