 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/doinits", type: :request do
  # Doinit. As you add validations to Doinit, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Doinit.create! valid_attributes
      get doinits_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      doinit = Doinit.create! valid_attributes
      get doinit_url(doinit)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_doinit_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      doinit = Doinit.create! valid_attributes
      get edit_doinit_url(doinit)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Doinit" do
        expect {
          post doinits_url, params: { doinit: valid_attributes }
        }.to change(Doinit, :count).by(1)
      end

      it "redirects to the created doinit" do
        post doinits_url, params: { doinit: valid_attributes }
        expect(response).to redirect_to(doinit_url(Doinit.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Doinit" do
        expect {
          post doinits_url, params: { doinit: invalid_attributes }
        }.to change(Doinit, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post doinits_url, params: { doinit: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested doinit" do
        doinit = Doinit.create! valid_attributes
        patch doinit_url(doinit), params: { doinit: new_attributes }
        doinit.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the doinit" do
        doinit = Doinit.create! valid_attributes
        patch doinit_url(doinit), params: { doinit: new_attributes }
        doinit.reload
        expect(response).to redirect_to(doinit_url(doinit))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        doinit = Doinit.create! valid_attributes
        patch doinit_url(doinit), params: { doinit: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested doinit" do
      doinit = Doinit.create! valid_attributes
      expect {
        delete doinit_url(doinit)
      }.to change(Doinit, :count).by(-1)
    end

    it "redirects to the doinits list" do
      doinit = Doinit.create! valid_attributes
      delete doinit_url(doinit)
      expect(response).to redirect_to(doinits_url)
    end
  end
end