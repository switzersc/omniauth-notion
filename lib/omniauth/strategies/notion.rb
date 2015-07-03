require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies

    class Notion < OmniAuth::Strategies::OAuth2
      
      # Give your strategy a name.
      option :name, 'notion'
      
     # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
        :site => "https://beta.getnotion.com"
      }

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid{ raw_info['users']['id'] }

      info do
        {
          email: raw_info['users']['email'],
          first_name: raw_info['users']['first_name'],
          last_name: raw_info['users']['last_name']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/users/me?systems=true').parsed
      end

    end
  end
end