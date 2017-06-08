require 'rails_helper'

RSpec.describe AdminsController, type: :controller do
 	it "renders the index template" do
     get :index
     expect(response.status).to eq(200)
     expect(response).to render_template(:index)
   end
end
