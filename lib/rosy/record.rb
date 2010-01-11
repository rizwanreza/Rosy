require "rubygems"
require "activerecord"

module Rosy
  class Record
    def self.record_updated_entries(parsed)
      parsed.each do |entry|
        Model.create( :title => entry.title,
                      :url => entry.url,
                      :author => entry.author,
                      :content => (entry.content || entry.summary),
                      :published => entry.published )
      end
    end
  end
end
