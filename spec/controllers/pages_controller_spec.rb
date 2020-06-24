require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'GET #home' do
    let(:messages) { create_list(:message, 3) }

    before { get :home }

    it 'populate an array of all messages' do
      expect(assigns(:messages)).to match_array(messages)
    end

    it 'render home view' do
      expect(response).to render_template :home
    end
  end
end
