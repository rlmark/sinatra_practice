require 'spec_helper'

describe "Post" do

  describe ".page_back" do
    it "should respond to .page_back" do
      expect(Post).to respond_to :page_back
    end

    it "should not return an empty array" do
      expect(Post.page_back(2)).not_to be_empty
    end

    it "should return instances of the Post class" do
      expect(Post.page_back(2).first).to be_an_instance_of(Post)
    end

    it "should be able to return the nth Post instance as first element" do
      expect(Post.page_back(2).first.title).to eq("post2")
    end

    it "should return the nth * 2 post instance as last element" do
      expect(Post.page_back(2).last.title).to eq("post4")
    end

    it "should be able to be called more than once" do
      
    end
  end

end
