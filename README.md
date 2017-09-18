## CryptoCoinsMap

This is the official repository of www.CryptoCoinsMap.Info.
The CryptoCoinsMap it's and web application that allow local businesses to register themselves to show in the world map.
The users can


### Versions
* Ruby 2.4.0p0 (2016-12-24 revision 57164)
* Rails 5.1.4

### Dependencies
* [Gmap4Rails](https://github.com/apneadiving/Google-Maps-for-Rails) for handle the google maps API
* [Devise](https://github.com/plataformatec/devise ) for database authentication
* [Ominiauth](https://github.com/omniauth/omniauth) for authentication with social networks
* [dotenv](https://github.com/bkeepers/dotenv) for externalize configurations


### Database
* It's configured to use Mysql database


### Tests
* No tests have been made yet

### Deployment instructions
* You must run db:seeds to feed the database with all kind of informations
* You must run parse_categories_from_paypal.rb to feed the database with categories
* You must run parse_coin_market_cap.rb to feed the database with cryptocurrencies
