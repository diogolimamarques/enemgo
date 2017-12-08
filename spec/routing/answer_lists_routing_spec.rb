require "rails_helper"

RSpec.describe AnswerListsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/answer_lists").to route_to("answer_lists#index")
    end

    it "routes to #new" do
      expect(:get => "/answer_lists/new").to route_to("answer_lists#new")
    end

    it "routes to #show" do
      expect(:get => "/answer_lists/1").to route_to("answer_lists#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/answer_lists/1/edit").to route_to("answer_lists#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/answer_lists").to route_to("answer_lists#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/answer_lists/1").to route_to("answer_lists#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/answer_lists/1").to route_to("answer_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/answer_lists/1").to route_to("answer_lists#destroy", :id => "1")
    end

  end
end
