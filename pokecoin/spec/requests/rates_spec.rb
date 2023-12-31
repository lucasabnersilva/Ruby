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

RSpec.describe "/rates", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Rate. As you add validations to Rate, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Rate.create! valid_attributes
      get rates_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      rate = Rate.create! valid_attributes
      get rate_url(rate)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_rate_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      rate = Rate.create! valid_attributes
      get edit_rate_url(rate)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Rate" do
        expect {
          post rates_url, params: { rate: valid_attributes }
        }.to change(Rate, :count).by(1)
      end

      it "redirects to the created rate" do
        post rates_url, params: { rate: valid_attributes }
        expect(response).to redirect_to(rate_url(Rate.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Rate" do
        expect {
          post rates_url, params: { rate: invalid_attributes }
        }.to change(Rate, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post rates_url, params: { rate: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested rate" do
        rate = Rate.create! valid_attributes
        patch rate_url(rate), params: { rate: new_attributes }
        rate.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the rate" do
        rate = Rate.create! valid_attributes
        patch rate_url(rate), params: { rate: new_attributes }
        rate.reload
        expect(response).to redirect_to(rate_url(rate))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        rate = Rate.create! valid_attributes
        patch rate_url(rate), params: { rate: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested rate" do
      rate = Rate.create! valid_attributes
      expect {
        delete rate_url(rate)
      }.to change(Rate, :count).by(-1)
    end

    it "redirects to the rates list" do
      rate = Rate.create! valid_attributes
      delete rate_url(rate)
      expect(response).to redirect_to(rates_url)
    end
  end
end
