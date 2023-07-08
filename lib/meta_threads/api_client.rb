# frozen_string_literal: true

require 'meta_threads/request_handler'
require 'json'

module MetaThreads
  # Provides methods for making API requests to the Threads API and retrieving user information and threads.
  class ApiClient
    BASE_URL = 'https://www.threads.net'
    API_URL = "#{BASE_URL}/api/graphql"

    def initialize
      @token = token
      @headers = {
        'Content-Type' => 'application/x-www-form-urlencoded',
        'X-IG-App-ID' => '238260118697367',
        'X-FB-LSD' => @token,
        'Sec-Fetch-Site' => 'same-origin'
      }
    end

    def get_user_id_from_username(username)
      response = MetaThreads::RequestHandler.send_get_request("#{BASE_URL}/@#{username}")
      text = response.gsub("\n", '')

      user_id = text.match(/"props":{"user_id":"(\d+)"},/)
      user_id ? user_id[1] : nil
    end

    def get_user(username)
      id = get_user_id_from_username(username)
      response = MetaThreads::RequestHandler.send_request(
        url: API_URL, headers: @headers,
        data: {
          'lsd' => @token,
          'variables' => { 'userID' => id }.to_json,
          'doc_id' => '23996318473300828'
        }
      )

      JSON.parse(response.body)
    end

    def get_user_threads(username)
      id = get_user_id_from_username(username)
      response = MetaThreads::RequestHandler.send_request(
        url: API_URL, headers: @headers,
        data: {
          'lsd' => @token,
          'variables' => { 'userID' => id }.to_json,
          'doc_id' => '6232751443445612'
        }
      )

      JSON.parse(response.body)
    end

    def get_post(post_id)
      response = MetaThreads::RequestHandler.send_request(
        url: API_URL, headers: @headers,
        data: {
          'lsd' => @token,
          'variables' => { 'postID' => post_id }.to_json,
          'doc_id' => '5587632691339264'
        }
      )

      JSON.parse(response.body)
    end

    def get_user_replies(username)
      id = get_user_id_from_username(username)
      response = MetaThreads::RequestHandler.send_request(
        url: API_URL, headers: @headers,
        data: {
          'lsd' => @token,
          'variables' => { 'userID' => id }.to_json,
          'doc_id' => '6307072669391286'
        }
      )

      JSON.parse(response.body)
    end

    private

    def token
      response = MetaThreads::RequestHandler.send_get_request("#{BASE_URL}/@instagram")
      token_key_position = response&.index('token')
      response&.slice(token_key_position + 9, 22)
    end
  end
end
