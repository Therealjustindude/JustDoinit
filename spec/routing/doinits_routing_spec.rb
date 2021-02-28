require "rails_helper"

RSpec.describe DoinitsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/doinits").to route_to("doinits#index")
    end

    it "routes to #new" do
      expect(get: "/doinits/new").to route_to("doinits#new")
    end

    it "routes to #show" do
      expect(get: "/doinits/1").to route_to("doinits#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/doinits/1/edit").to route_to("doinits#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/doinits").to route_to("doinits#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/doinits/1").to route_to("doinits#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/doinits/1").to route_to("doinits#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/doinits/1").to route_to("doinits#destroy", id: "1")
    end
  end
end
