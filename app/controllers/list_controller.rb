require 'net/http'
require 'uri'
require 'json'

class ListController < ApplicationController
    def index

        parsed_url = URI.parse("https://getcountrieslist-rhn-engineering-dsch-dev.apps.sandbox-m3.1530.p1.openshiftapps.com/countries")
        http = Net::HTTP.new(parsed_url.host, parsed_url.port)
        
        http.use_ssl = true

        puts "Ready to GET"

        request = Net::HTTP::Get.new(parsed_url.request_uri)
        response = http.request(request)

        # Use the response as needed
        @items = JSON.parse(response.body)
    end
end
