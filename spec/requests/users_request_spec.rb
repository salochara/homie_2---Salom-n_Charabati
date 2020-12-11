require 'rails_helper'

RSpec.describe "UsersRequest", type: :request do
  let(:user1){User.new(name: "User1", email: "User1@hey.com", password: 123456)}
  let(:user2){User.new(name: "User2", email: "User2@hey.com", password: 123456)}
  let(:user3){User.new(name: "User3", email: "User3@hey.com", password: 123456)}


  context '/users/:id/welcome request' do
    it 'can successfully make requests to /users/:id/welcome' do
      get '/users/:id/welcome'
      expect(response).to have_http_status(:success)
    end


    it 'returns the first user saved' do
      user1.save
      user2.save
      user3.save
      get '/users/:id/welcome'
      expect(response.body).to include("User1")
    end
  end
end
