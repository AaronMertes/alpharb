# Alpharb [![Gem Version](https://badge.fury.io/rb/alpharb.svg)](https://badge.fury.io/rb/alpharb)

A Ruby library to query the [Alpha Vantage API](https://www.alphavantage.co/documentation/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'alpharb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install alpharb

## Usage

```ruby
require 'alpharb'

Alpharb::Client.new('APIKEY').search('BIDI4')

{
  :bestMatches=>[
    {
      :"1. symbol"=>"BIDI4.SAO",
      :"2. name"=>"Banco Inter S.A.",
      :"3. type"=>"Equity",
      :"4. region"=>"Brazil/Sao Paolo",
      :"5. marketOpen"=>"10:00",
      :"6. marketClose"=>"17:30",
      :"7. timezone"=>"UTC-03",
      :"8. currency"=>"BRL",
      :"9. matchScore"=>"0.7692"
    }
  ]
}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hamorim/alpharb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Alpharb project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hamorim/alpharb/blob/master/CODE_OF_CONDUCT.md).
