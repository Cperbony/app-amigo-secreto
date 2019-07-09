require "rails_helper"

RSpec.describe CampaignsController, type: :controller do
  include Devise::Test::ControllerHelpers

  before(:each) do
<<<<<<< HEAD
=======
    # request.env["HTTP_ACCEPT"] = 'application/json'

>>>>>>> controller_campaign
    @request.env["devise.mapping"] = Devise.mappings[:user]
    @current_user = FactoryBot.create(:user)
    sign_in @current_user
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
<<<<<<< HEAD
    context "campaing exists" do
      context "User is the owner of the campaing" do
        it "Returns success" do
          campaign = create(:campaign, user: @current_user)
          get :show, params: { id: campaign.id }
=======

    context "campaign exists" do
      context "User is the owner of the campaing" do
        it "Returns success" do
          campaign = create(:campaign, user: @current_user)
          get :show, params: {id: campaign.id}
>>>>>>> controller_campaign
          expect(response).to have_http_status(:success)
        end
      end

      context "User is not the owner of the campaign" do
        it "Redirects to root" do
          campaign = create(:campaign)
<<<<<<< HEAD
          get :show, params: { id: campaign.id }

          expect(response).to redirect_to("/")
=======
          get :show, params: {id: campaign.id}

          expect(response).to redirect_to('/')
>>>>>>> controller_campaign
        end
      end
    end

    context "campaign don't exists" do
      it "Redirects to root" do
<<<<<<< HEAD
        get :show, params: { id: 0 }
        expect(response).to redirect_to("/")
=======
        get :show, params: {id: 0}
        expect(response).to redirect_to('/')
>>>>>>> controller_campaign
      end
    end
  end

<<<<<<< HEAD
  describe "POST #create" do
    before(:each) do
      @campaign_attributes = attributes_for(:campaign, user: @current_user)
      post :create, params: { campaign: @campaign_attributes }
=======

  describe "POST #create" do
    before(:each) do
      @campaign_attributes = attributes_for(:campaign, user: @current_user)
      post :create, params: {campaign: @campaign_attributes}
>>>>>>> controller_campaign
    end

    it "Redirect to new campaign" do
      expect(response).to have_http_status(302)
      expect(response).to redirect_to("/campaigns/#{Campaign.last.id}")
    end

    it "Create campaign with right attributes" do
      expect(Campaign.last.user).to eql(@current_user)
<<<<<<< HEAD
      expect(Campaign.last.title).to eql("Nova Campanha")
      expect(Campaign.last.description).to eql("Descreva sua campanha...")
      expect(Campaign.last.status).to eql("pending")
=======
      expect(Campaign.last.title).to eql(@campaign_attributes[:title])
      expect(Campaign.last.description).to eql(@campaign_attributes[:description])
      expect(Campaign.last.status).to eql('pending')
>>>>>>> controller_campaign
    end

    it "Create campaign with owner associated as a member" do
      expect(Campaign.last.members.last.name).to eql(@current_user.name)
      expect(Campaign.last.members.last.email).to eql(@current_user.email)
    end
  end

  describe "DELETE #destroy" do
    before(:each) do
<<<<<<< HEAD
      request.env["HTTP_ACCEPT"] = "application/json"
=======
      request.env["HTTP_ACCEPT"] = 'application/json'
>>>>>>> controller_campaign
    end

    context "User is the Campaign Owner" do
      it "returns http success" do
        campaign = create(:campaign, user: @current_user)
<<<<<<< HEAD
        delete :destroy, params: { id: campaign.id }
=======
        delete :destroy, params: {id: campaign.id}
>>>>>>> controller_campaign
        expect(response).to have_http_status(:success)
      end
    end

    context "User isn't the Campaign Owner" do
      it "returns http forbidden" do
        campaign = create(:campaign)
<<<<<<< HEAD
        delete :destroy, params: { id: campaign.id }
=======
        delete :destroy, params: {id: campaign.id}
>>>>>>> controller_campaign
        expect(response).to have_http_status(:forbidden)
      end
    end
  end

  describe "PUT #update" do
    before(:each) do
      @new_campaign_attributes = attributes_for(:campaign)
<<<<<<< HEAD
      request.env["HTTP_ACCEPT"] = "application/json"
=======
      request.env["HTTP_ACCEPT"] = 'application/json'
>>>>>>> controller_campaign
    end

    context "User is the Campaign Owner" do
      before(:each) do
        campaign = create(:campaign, user: @current_user)
<<<<<<< HEAD
        put :update, params: { id: campaign.id, campaign: @new_campaign_attributes }
=======
        put :update, params: {id: campaign.id, campaign: @new_campaign_attributes}
>>>>>>> controller_campaign
      end

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "Campaign have the new attributes" do
        expect(Campaign.last.title).to eq(@new_campaign_attributes[:title])
        expect(Campaign.last.description).to eq(@new_campaign_attributes[:description])
      end
    end

    context "User isn't the Campaign Owner" do
      it "returns http forbidden" do
        campaign = create(:campaign)
<<<<<<< HEAD
        put :update, params: { id: campaign.id, campaign: @new_campaign_attributes }
=======
        put :update, params: {id: campaign.id, campaign: @new_campaign_attributes}
>>>>>>> controller_campaign
        expect(response).to have_http_status(:forbidden)
      end
    end
  end

  describe "GET #raffle" do
    before(:each) do
<<<<<<< HEAD
      request.env["HTTP_ACCEPT"] = "application/json"
=======
      request.env["HTTP_ACCEPT"] = 'application/json'
>>>>>>> controller_campaign
    end

    context "User is the Campaign Owner" do
      before(:each) do
        @campaign = create(:campaign, user: @current_user)
      end

      context "Has more than two members" do
        before(:each) do
          create(:member, campaign: @campaign)
          create(:member, campaign: @campaign)
          create(:member, campaign: @campaign)
<<<<<<< HEAD
          post :raffle, params: { id: @campaign.id }
=======
          post :raffle, params: {id: @campaign.id}
>>>>>>> controller_campaign
        end

        it "returns http success" do
          expect(response).to have_http_status(:success)
        end
      end

      context "No more than two members" do
        before(:each) do
          create(:member, campaign: @campaign)
<<<<<<< HEAD
          post :raffle, params: { id: @campaign.id }
=======
          post :raffle, params: {id: @campaign.id}
>>>>>>> controller_campaign
        end

        it "returns http success" do
          expect(response).to have_http_status(:unprocessable_entity)
        end
      end
    end

    context "User isn't the Campaign Owner" do
      before(:each) do
        @campaign = create(:campaign)
<<<<<<< HEAD
        post :raffle, params: { id: @campaign.id }
=======
        post :raffle, params: {id: @campaign.id}
>>>>>>> controller_campaign
      end

      it "returns http forbidden" do
        expect(response).to have_http_status(:forbidden)
      end
    end
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> controller_campaign
