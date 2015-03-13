require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class CodePicnic < OmniAuth::Strategies::OAuth2
      
      option :name, :codepicnic

      option :client_options, {
        :site => "https://codepicnic.com",
        :authorize_url => "/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"],
          :first_name => raw_info["first_name"],
          :last_name => raw_info["last_name"],
          :avatar_url => raw_info["avatar_url"],
          # and anything else you want to return to your API consumers
        }
      end

      extra do
        {'access_token' => access_token}
      end

      def raw_info
        @raw_info ||= access_token.get('/api/me.json').parsed
      end
    end
  end
end

OmniAuth.config.add_camelization('codepicnic', 'CodePicnic')