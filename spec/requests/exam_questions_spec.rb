require 'rails_helper'

RSpec.describe "ExamQuestions", type: :request do
  describe "GET /exam_questions" do
    it "works! (now write some real specs)" do
      get exam_questions_path
      expect(response).to have_http_status(200)
    end
  end
end
