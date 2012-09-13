require "spec_helper"

describe ShotsController do
  describe "routing" do

    it "routes to #index" do
      get("/shots").should route_to("shots#index")
    end

    it "routes to #new" do
      get("/shots/new").should route_to("shots#new")
    end

    it "routes to #show" do
      get("/shots/1").should route_to("shots#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shots/1/edit").should route_to("shots#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shots").should route_to("shots#create")
    end

    it "routes to #update" do
      put("/shots/1").should route_to("shots#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shots/1").should route_to("shots#destroy", :id => "1")
    end

  end
end
