require "spec_helper"

describe ShippingDetailsController do
  describe "routing" do

    it "routes to #index" do
      get("/shipping_details").should route_to("shipping_details#index")
    end

    it "routes to #new" do
      get("/shipping_details/new").should route_to("shipping_details#new")
    end

    it "routes to #show" do
      get("/shipping_details/1").should route_to("shipping_details#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shipping_details/1/edit").should route_to("shipping_details#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shipping_details").should route_to("shipping_details#create")
    end

    it "routes to #update" do
      put("/shipping_details/1").should route_to("shipping_details#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shipping_details/1").should route_to("shipping_details#destroy", :id => "1")
    end

  end
end
