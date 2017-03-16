require 'rails_helper'

RSpec.describe Api::CategoriesController, type: :controller do
  let(:cat) {create(:category)}
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
