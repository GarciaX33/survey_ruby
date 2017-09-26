require("spec_helper")
require("survey")

describe(Survey) do
  describe('#upcase_name') do
    it("capitalizes the first letter of each word in the survey name") do
      survey = Survey.create({:name => "favorite food survey"})
      expect(survey.name()).to(eq("Favorite Food Survey"))
    end
  end
end
