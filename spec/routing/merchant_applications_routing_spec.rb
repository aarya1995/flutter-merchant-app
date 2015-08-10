require "spec_helper"

describe MerchantApplicationsController do
  describe "routing" do

    it "routes to #index" do
      get("/merchant_applications").should route_to("merchant_applications#index")
    end

    it "routes to #new" do
      get("/merchant_applications/new").should route_to("merchant_applications#new")
    end

    it "routes to #show" do
      get("/merchant_applications/1").should route_to("merchant_applications#show", :id => "1")
    end

    it "routes to #edit" do
      get("/merchant_applications/1/edit").should route_to("merchant_applications#edit", :id => "1")
    end

    it "routes to #create" do
      post("/merchant_applications").should route_to("merchant_applications#create")
    end

    it "routes to #update" do
      put("/merchant_applications/1").should route_to("merchant_applications#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/merchant_applications/1").should route_to("merchant_applications#destroy", :id => "1")
    end

  end
end
