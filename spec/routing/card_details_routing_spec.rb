require "spec_helper"

describe CardDetailsController do
  describe "routing" do

    it "routes to #index" do
      get("/card_details").should route_to("card_details#index")
    end

    it "routes to #new" do
      get("/card_details/new").should route_to("card_details#new")
    end

    it "routes to #show" do
      get("/card_details/1").should route_to("card_details#show", :id => "1")
    end

    it "routes to #edit" do
      get("/card_details/1/edit").should route_to("card_details#edit", :id => "1")
    end

    it "routes to #create" do
      post("/card_details").should route_to("card_details#create")
    end

    it "routes to #update" do
      put("/card_details/1").should route_to("card_details#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/card_details/1").should route_to("card_details#destroy", :id => "1")
    end

  end
end
