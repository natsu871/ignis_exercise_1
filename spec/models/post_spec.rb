require 'spec_helper'

describe Post do
  before do
    @post = Post.new(name: "Example User", body: "Hello, world.")
  end

  subject { @post }

  it { should respond_to(:name) }
  it { should respond_to(:body) }

  it { should be_valid }

  describe "when name is not present" do
    before { @post.name = " " }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @post.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when body is not present" do
    before { @post.body = " " }
    it { should_not be_valid }
  end
end
