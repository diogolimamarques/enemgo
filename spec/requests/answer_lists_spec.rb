require 'rails_helper'

RSpec.describe "AnswerLists", type: :request do
  describe "GET /answer_lists" do
    it "works! (now write some real specs)" do
      get answer_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
