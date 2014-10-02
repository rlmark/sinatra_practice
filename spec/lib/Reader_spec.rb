require 'spec_helper'

describe "Post" do

  describe ".pages" do
    it "should respond to .page_back" do
      expect(Post).to respond_to :pages
    end

    it "should not return an empty array" do
      expect(Post.pages(2)).not_to be_empty
    end

    it "should return instances of the Post class" do
      expect(Post.pages(2)[0].first).to be_an_instance_of(Post)
    end

    it "should be able to return the first desired element in slice" do
      expect(Post.pages(2)[0].first.title).to eq("post1")
    end

    it "should return the last post instance from slice" do
      expect(Post.pages(2)[0].last.title).to eq("post2")
    end

    it "should be able to access all slices of array" do
      expect(Post.pages(2)[1].first.title).to eq("post3")
    end
  end

end
