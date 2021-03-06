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

describe CompoundsController do

  # This should return the minimal set of attributes required to create a valid
  # Compound. As you add validations to Compound, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "compound_code" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CompoundsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all compounds as @compounds" do
      compound = Compound.create! valid_attributes
      get :index, {}, valid_session
      assigns(:compounds).should eq([compound])
    end
  end

  describe "GET show" do
    it "assigns the requested compound as @compound" do
      compound = Compound.create! valid_attributes
      get :show, {:id => compound.to_param}, valid_session
      assigns(:compound).should eq(compound)
    end
  end

  describe "GET new" do
    it "assigns a new compound as @compound" do
      get :new, {}, valid_session
      assigns(:compound).should be_a_new(Compound)
    end
  end

  describe "GET edit" do
    it "assigns the requested compound as @compound" do
      compound = Compound.create! valid_attributes
      get :edit, {:id => compound.to_param}, valid_session
      assigns(:compound).should eq(compound)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Compound" do
        expect {
          post :create, {:compound => valid_attributes}, valid_session
        }.to change(Compound, :count).by(1)
      end

      it "assigns a newly created compound as @compound" do
        post :create, {:compound => valid_attributes}, valid_session
        assigns(:compound).should be_a(Compound)
        assigns(:compound).should be_persisted
      end

      it "redirects to the created compound" do
        post :create, {:compound => valid_attributes}, valid_session
        response.should redirect_to(Compound.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved compound as @compound" do
        # Trigger the behavior that occurs when invalid params are submitted
        Compound.any_instance.stub(:save).and_return(false)
        post :create, {:compound => { "compound_code" => "invalid value" }}, valid_session
        assigns(:compound).should be_a_new(Compound)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Compound.any_instance.stub(:save).and_return(false)
        post :create, {:compound => { "compound_code" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested compound" do
        compound = Compound.create! valid_attributes
        # Assuming there are no other compounds in the database, this
        # specifies that the Compound created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Compound.any_instance.should_receive(:update).with({ "compound_code" => "MyString" })
        put :update, {:id => compound.to_param, :compound => { "compound_code" => "MyString" }}, valid_session
      end

      it "assigns the requested compound as @compound" do
        compound = Compound.create! valid_attributes
        put :update, {:id => compound.to_param, :compound => valid_attributes}, valid_session
        assigns(:compound).should eq(compound)
      end

      it "redirects to the compound" do
        compound = Compound.create! valid_attributes
        put :update, {:id => compound.to_param, :compound => valid_attributes}, valid_session
        response.should redirect_to(compound)
      end
    end

    describe "with invalid params" do
      it "assigns the compound as @compound" do
        compound = Compound.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Compound.any_instance.stub(:save).and_return(false)
        put :update, {:id => compound.to_param, :compound => { "compound_code" => "invalid value" }}, valid_session
        assigns(:compound).should eq(compound)
      end

      it "re-renders the 'edit' template" do
        compound = Compound.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Compound.any_instance.stub(:save).and_return(false)
        put :update, {:id => compound.to_param, :compound => { "compound_code" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested compound" do
      compound = Compound.create! valid_attributes
      expect {
        delete :destroy, {:id => compound.to_param}, valid_session
      }.to change(Compound, :count).by(-1)
    end

    it "redirects to the compounds list" do
      compound = Compound.create! valid_attributes
      delete :destroy, {:id => compound.to_param}, valid_session
      response.should redirect_to(compounds_url)
    end
  end

end
