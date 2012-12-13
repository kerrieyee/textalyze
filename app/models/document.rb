require './lib/web_parser.rb'

class Document < ActiveRecord::Base
  include WebHandler

  attr_accessible :author, :body, :submitted_by, :title, :url
  
  def self.new_http_request(url)
    WebHandler.url_validity_check(url) == false ? (return 'Invalid URL') : true 
    WebHandler.data_from_url(url)
  end

  def self.parse_http_body(body)
  end

end
