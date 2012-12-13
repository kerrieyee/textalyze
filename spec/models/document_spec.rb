require 'spec_helper'

describe Document do 
  context 'document provided via URL' do

    let(:fake_url) {"http://"}
    it 'returns an error when an invalid URL is passed' do
      Document.new_http_request("http://somefakeshit").should eql("Invalid URL")
    end

    it 'fires off an HTTP request when a valid URL is passed' do
    end

    it 'pulls in the body of an HTTP request'

    it 'removes the HTML content if applicable'

    it 'stores the HTTP body in the database BODY column'

  end

  context 'document provided via upload' do
  end

end