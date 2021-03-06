require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MerchantApplicationsController do

  # This should return the minimal set of attributes required to create a valid
  # MerchantApplication. As you add validations to MerchantApplication, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MerchantApplicationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all merchant_applications as @merchant_applications" do
      merchant_application = MerchantApplication.create! valid_attributes
      get :index, {}, valid_session
      assigns(:merchant_applications).should eq([merchant_application])
    end
  end

  describe "GET show" do
    it "assigns the requested merchant_application as @merchant_application" do
      merchant_application = MerchantApplication.create! valid_attributes
      get :show, {:id => merchant_application.to_param}, valid_session
      assigns(:merchant_application).should eq(merchant_application)
    end
  end

  describe "GET new" do
    it "assigns a new merchant_application as @merchant_application" do
      get :new, {}, valid_session
      assigns(:merchant_application).should be_a_new(MerchantApplication)
    end
  end

  describe "GET edit" do
    it "assigns the requested merchant_application as @merchant_application" do
      merchant_application = MerchantApplication.create! valid_attributes
      get :edit, {:id => merchant_application.to_param}, valid_session
      assigns(:merchant_application).should eq(merchant_application)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MerchantApplication" do
        expect {
          post :create, {:merchant_application => valid_attributes}, valid_session
        }.to change(MerchantApplication, :count).by(1)
      end

      it "assigns a newly created merchant_application as @merchant_application" do
        post :create, {:merchant_application => valid_attributes}, valid_session
        assigns(:merchant_application).should be_a(MerchantApplication)
        assigns(:merchant_application).should be_persisted
      end

      it "redirects to the created merchant_application" do
        post :create, {:merchant_application => valid_attributes}, valid_session
        response.should redirect_to(MerchantApplication.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved merchant_application as @merchant_application" do
        # Trigger the behavior that occurs when invalid params are submitted
        MerchantApplication.any_instance.stub(:save).and_return(false)
        post :create, {:merchant_application => { "name" => "invalid value" }}, valid_session
        assigns(:merchant_application).should be_a_new(MerchantApplication)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        MerchantApplication.any_instance.stub(:save).and_return(false)
        post :create, {:merchant_application => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested merchant_application" do
        merchant_application = MerchantApplication.create! valid_attributes
        # Assuming there are no other merchant_applications in the database, this
        # specifies that the MerchantApplication created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        MerchantApplication.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => merchant_application.to_param, :merchant_application => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested merchant_application as @merchant_application" do
        merchant_application = MerchantApplication.create! valid_attributes
        put :update, {:id => merchant_application.to_param, :merchant_application => valid_attributes}, valid_session
        assigns(:merchant_application).should eq(merchant_application)
      end

      it "redirects to the merchant_application" do
        merchant_application = MerchantApplication.create! valid_attributes
        put :update, {:id => merchant_application.to_param, :merchant_application => valid_attributes}, valid_session
        response.should redirect_to(merchant_application)
      end
    end

    describe "with invalid params" do
      it "assigns the merchant_application as @merchant_application" do
        merchant_application = MerchantApplication.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MerchantApplication.any_instance.stub(:save).and_return(false)
        put :update, {:id => merchant_application.to_param, :merchant_application => { "name" => "invalid value" }}, valid_session
        assigns(:merchant_application).should eq(merchant_application)
      end

      it "re-renders the 'edit' template" do
        merchant_application = MerchantApplication.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MerchantApplication.any_instance.stub(:save).and_return(false)
        put :update, {:id => merchant_application.to_param, :merchant_application => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested merchant_application" do
      merchant_application = MerchantApplication.create! valid_attributes
      expect {
        delete :destroy, {:id => merchant_application.to_param}, valid_session
      }.to change(MerchantApplication, :count).by(-1)
    end

    it "redirects to the merchant_applications list" do
      merchant_application = MerchantApplication.create! valid_attributes
      delete :destroy, {:id => merchant_application.to_param}, valid_session
      response.should redirect_to(merchant_applications_url)
    end
  end

end
