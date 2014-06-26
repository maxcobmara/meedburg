require "spec_helper"

describe CompoundsController do
  describe "routing" do

    it "routes to #index" do
      get("/compounds").should route_to("compounds#index")
    end

    it "routes to #new" do
      get("/compounds/new").should route_to("compounds#new")
    end

    it "routes to #show" do
      get("/compounds/1").should route_to("compounds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/compounds/1/edit").should route_to("compounds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/compounds").should route_to("compounds#create")
    end

    it "routes to #update" do
      put("/compounds/1").should route_to("compounds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/compounds/1").should route_to("compounds#destroy", :id => "1")
    end

  end
end
