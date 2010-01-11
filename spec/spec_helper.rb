require "rubygems"
require 'spec'
require "fakeweb"

begin require "redgreen" unless ENV['TM_CURRENT_LINE']; rescue LoadError; end

$LOAD_PATH << File.join(File.dirname(__FILE__),"..","lib") 
require 'rosy'


def load_feed(filename)
  File.read("#{File.dirname(__FILE__)}/feeds/#{filename}")
end