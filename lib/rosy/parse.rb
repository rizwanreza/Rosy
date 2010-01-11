require "rubygems"
require "feedzirra"
require "chronic"

module Rosy
  class Parse
    def self.get_updates(feed, from, to, chr_limit)
      @feed = feed
      @from = Chronic.parse(from)
      @to = Chronic.parse(to)
      @range = @from..@to

      parsed = Feedzirra::Feed.fetch_and_parse(@feed)
      
      updated_entries = []
      
      # Narrow entries in date range
      parsed.entries.each do |entry|
        content = entry.content || entry.summary
        if (entry.published >= @from) && (entry.published <= @to) && (content.length >= chr_limit)
          updated_entries << entry
        end
      end
      return updated_entries
    end
    
    def self.get_multiple_updates(feeds, from, to, chr_limit)
      updates = []
      feeds.each do |feed|
        updates << self.get_updates(feed, from, to, chr_limit)
      end
      return updates
    end
  end
end
