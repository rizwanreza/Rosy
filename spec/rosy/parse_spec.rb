require File.join(File.dirname(__FILE__), "..","spec_helper")

# TODO: Bring RSS feeds out as fixture files.

describe Rosy::Parse do
  before(:all) do
    FakeWeb.register_uri(:get, "http://feeds.feedburner.com/RubyInside", :body => load_feed("rubyinside.rss"))
  end
  
  it "extracts feed from Jan 1 to Jan 7 with 200 character limit" do
    Rosy::Parse.get_updates("http://feeds.feedburner.com/RubyInside", "Jan 1 2010", "Jan 8 2010", 200).length.should == 3
  end
  
  it "extracts multiple feeds"
  
  it "extracts feed with articles in summary tag but not in content"
  
  it "extracts feed with articles in content tag but not in summary"
  
  it "does not return feed entries out of the character limit"
  
  
end