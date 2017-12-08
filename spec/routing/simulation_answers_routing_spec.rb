require "rails_helper"

RSpec.describe SimulationAnswersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/simulation_answers").to route_to("simulation_answers#index")
    end

    it "routes to #new" do
      expect(:get => "/simulation_answers/new").to route_to("simulation_answers#new")
    end

    it "routes to #show" do
      expect(:get => "/simulation_answers/1").to route_to("simulation_answers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/simulation_answers/1/edit").to route_to("simulation_answers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/simulation_answers").to route_to("simulation_answers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/simulation_answers/1").to route_to("simulation_answers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/simulation_answers/1").to route_to("simulation_answers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/simulation_answers/1").to route_to("simulation_answers#destroy", :id => "1")
    end

  end
end
