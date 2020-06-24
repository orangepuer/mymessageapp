require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  describe 'POST #create' do
    sign_in_user

    context 'with valid attributes' do
      it 'save the new message in the database' do
        expect { post :create, params: { message: attributes_for(:message) } }.to change(Message, :count).by(1)
      end

      it 'redirect to root path' do
        post :create, params: { message: attributes_for(:message) }
        expect(response).to redirect_to root_path
      end
    end

    context 'with invalid attributes' do
      it 'does not save the message' do
        expect { post :create, params: { message: attributes_for(:invalid_message) } }.to_not change(Message, :count)
      end

      it 'redirect to root path' do
        post :create, params: { message: attributes_for(:invalid_message) }
        expect(response).to redirect_to root_path
      end
    end
  end
end
