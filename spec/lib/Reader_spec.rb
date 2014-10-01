require 'spec_helper'

describe "Post" do

  describe ".page_back" do
    it "should respond to .page_back" do
      expect(Post).to respond_to :page_back
    end

    it "should not return an empty array" do
      expect(Post.page_back).not_to be_empty
    end

    it "should return instances of the Post class" do
      expect(Post.page_back.first).to be_an_instance_of(Post)
    end

  end

end
