# frozen_string_literal: true

require 'net/https'
require 'json'
require 'net/http'

module MetaThreads
  # The `RequestHandler` class provides methods for sending HTTP GET and POST requests.
  class RequestHandler
    # It is a class method that sends an HTTP GET request to the specified URL and returns the response body.
    def self.send_get_request(url)
      uri = URI(url)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request = Net::HTTP::Get.new(uri)
      response = http.request(request)
      response.body
    end

    # It is a class method that sends an HTTP POST request to the specified URL with the provided headers and data.
    def self.send_request(url:, headers:, data:)
      uri = URI(url)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request = Net::HTTP::Post.new(uri.path, headers)
      request.set_form_data(data)

      http.request(request)
    end
  end
end
