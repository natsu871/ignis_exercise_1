require 'spec_helper'

describe PostsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "new post page" do
  end
end
