# Omniauth-Notion

Omniauth strategy for Notion's API with oAuth 2.0

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-notion'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-notion

## Usage

You'll need to register an app on Notion to receive an app key and secret. You can do this here - https://getnotion.com/developers

Usage of the gem is very similar to other OmniAuth strategies.
You'll need to add your app credentials to `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :notion, 'app_id', 'app_secret', scope: 'public'
end
```

Or with Devise in `config/initializers/devise.rb`:

```ruby
config.omniauth :notion, 'app_id', 'app_secret', scope: 'public'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request