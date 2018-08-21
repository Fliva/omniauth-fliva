require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Fliva < OmniAuth::Strategies::OAuth2
      option :name, :fliva

      option :client_options, {
        :site => "https://api.fliva.com",
        :authorize_url => "/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
          :account => raw_info["account"]["id"],
          :account_name => raw_info["account"]["title"],
          :user_name => raw_info["name"],
          :user_email => raw_info["email"]
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/me.json').parsed["data"]
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end
