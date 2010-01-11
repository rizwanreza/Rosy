$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))

require 'rosy/parse.rb'

# rosy = Rosy::Parse.get_updates("http://feeds.feedburner.com/rizwanreza", "Jan 1 2009", "Jan 7 2009", 200)

