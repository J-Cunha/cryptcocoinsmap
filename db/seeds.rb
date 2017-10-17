# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
require 'faker'
require 'nokogiri'
require 'net/http'

class DbFeed
  #LANGUAGES
  def self.languages
    languages_file = File.read('languages.json')
    languages = JSON.parse(languages_file)
    languages.each do |language|
      puts code = language[0].to_s
      puts name_en = language[1][:name]
      puts name_native = language[1][:native]
      Language.create(name_en: name_en, name_native: name_native, code: code)
    end
  end

  def self.continents
    #CONTINENTS
    ####################################################
    continents = [
        {code: "AF", name: "Africa"},
        {code: "AN", name: "Antarctica"},
        {code: "AS", name: "Asia"},
        {code: "EU", name: "Europe"},
        {code: "NA", name: "North America"},
        {code: "OC", name: "Oceania"},
        {code: "SA", name: "South America"}
    ]
    continents.each {|c|
      Continent.create(name_en: c[:name], code: c[:code])
    }
  end

  def self.countries
    #COUNTRIES
    ####################################################
    countries_file = File.read('db/countries.json')
    countries = JSON.parse(countries_file)
    countries.each do |c|
      country = Country.new
      iso2 = c[0]
      name_en= c[1]["name"]
      name_native=c[1]["native"]
      phone_code = c[1]["phone"]
      country.code_iso2 = iso2
      country.name_en= name_en
      country.name_native= name_native
      country.phone_code= phone_code
      country.continent = Continent.where(code: c[1][:continent]).first
      puts "#{country.name_en} - #{country.save ? "Saved" : "Failed"}"
      #puts c[1][:languages].each {|lg| CountryLanguage.create(country: country, language: Language.where(code: lg).first)}
      #puts "\n\n\n#{c[:name][:native]},#{c.class}\n-"
    end
  end

  def self.fiat_currencies
    #FIATCURRENCIES
    ####################################################
    fiats_file = File.read('db/fiat_currencies.json')
    fiats = JSON.parse(fiats_file)
    fiats.each do |fc|
      f = FiatCurrency.new
      f.name = fc[1]["name"]
      f.code = fc[1]["code"]
      f.symbol = fc[1]["symbol_native"]
      puts "#{f.name} - #{f.save ? "Saved" : "Failed"}"
    end
  end

  def self.crypto_currencies
    #CRYPTOCURRENCIES
    ####################################################
    page = Nokogiri::HTML(open("https://coinmarketcap.com/currencies/views/all/"))
    allTr = page.css('tr')
    puts allTr.class
    allTr.each do |tr|
      allTd = (tr.css('td'))
      if !allTd[1].nil? && !allTd[2].nil?
        name = allTd[1].text.to_s.delete("\t").delete("\n").split.join(" ")
        next if name.to_s.end_with?('...')
        code = allTd[2].text.to_s.delete("\t").delete("\n").delete(" ")
        cp = CryptoCurrency.new
        cp.name = name
        cp.code = code
        if cp.save
          puts "#{name} saved"
        else
          puts "#{name} not saved"
        end
      end
    end
  end

  def self.categories
    #CATEGORIES
    ####################################################
    #parse categories from paypal
    page = Nokogiri::HTML(open("https://developer.paypal.com/docs/classic/adaptive-accounts/integration-guide/ACBusinessCategories/"))
    allTr = page.css('tr')
    puts allTr.length
    allTr.each do |tr|
      allTd = (tr.css('td'))
      if !allTd[1].nil?
        #category_id =allTd[0].text.to_s.delete("\t").delete("\n").delete(" ")
        name =allTd[1].text.to_s.delete("\t").delete("\n")
        puts "#{name} #{Category.create(name: name) ? true : false }"
      end
    end
    arts_en = format_cat_str(" Nightclub, Fashion Designer, Art Gallery, Modeling Agency, Actor, Artist, Athlete, Author, Music Band, Blogger, Chef, Coach, Comedian, Dancer, Entrepreneur, Fashion Model, Fitness Model, Journalist, Motivational Speaker, Musician, Photographer, Politician, Musical Producer, Movie Producer, Theater Producer, Public Figure, Scientist, Teacher, Video Creator, Writer, Youtuber")
    entertainment_en = format_cat_str(" Public House, Zoo, Aquarium, Ticket Sales, Symphony, Rodeo, Race Track, Museum, Circus, Casino, Sports Team, Books, Book Store, Concert Tour, Festival, Library, Literary Arts, Magazine, Movie Theater, Theater, Movie/Television Studio, Music Studio, Music Video, Performance Art, Performing Arts, Podcast, Radio Station, Record Label, Show, Sports League, Stadium, Arena & Sports Venue, Theatrical Productions, TV Channel, TV Network, TV Show")
    hospitality_en = format_cat_str(" Accomodation, Hotel, Motel, Resort, Serviced Apartaments, Bed and Breakfasts, Hostel")
    tourism = format_cat_str(" Airport, Tourism Agency, Travel Agency, Travel Agent, Touristic point")
    food_en = format_cat_str(" Steakhouse, Pizzeria, Restaurant, Bar, Pub, Barbecue Restaurant, Biker Bar, Cafés, Cafeteria, Coffeehouse, Doughnut Shops‎, Drive-in Restaurants‎, Fast-food, Seafood Restaurant, Tea House, Vegetarian Restaurant, Asian Restaurante, Brazilian Restaurant, Italian Restaurant")
    antiques_vintage = format_cat_str(" Antiques & Vintage, Antique Store")
    marketing = format_cat_str(" Publisher, Advertising Agency, Broadcasting & Media Production, Graphic Design, Market Consultant, Photographic Services & Equipment")
    construction = format_cat_str(" Architect, Construction Restoration, ")
    sex = (" Erotic dance‎, Erotic massage‎, Gay bathhouses‎, Pornography‎, Sex toys‎, Sexology‎, Sex tourism‎, Call Girl, Call Boy, Strip Club")
    health = (" Hospital, Pharmacy, Drug Store, Medicinal Cannabis")
    agriculture = format_cat_str("")
    forestry=format_cat_str("")
    fishing=format_cat_str("")
    mining =format_cat_str("")
    construction =format_cat_str("")
    manufacturing=format_cat_str("")
    transportation =format_cat_str("")
    communications =format_cat_str("")
    electric=format_cat_str("")
    gas=format_cat_str("")
    sanitary_service=format_cat_str("")
    finance=format_cat_str("")
    insurance =format_cat_str("")
    nonclassifiable=format_cat_str("")


  end

  def format_cat_str(str)
    array = str.split(',')
    array.each do
    |a|
      a[0]=''
    end
    return array
  end

#USERS
####################################################
  def self.users
    j_u = User.create(email: "jvsdc1992@gmail.com", password: "password", password_confirmation: "password")
    j_u_2 = User.create(email: "user1@user1.com", password: "password", password_confirmation: "password")
    j_u_2 = User.create(email: "joao@joao.com", password: "password", password_confirmation: "password")
  end

  def self.address_faker
    i = 0
    20.times do
      i +=1
      fk_addr = Faker::Address
      addr = Address.new
      addr.user = User.where(email: "user@user.com").first if i.even?
      addr.user = User.where(email: "user1@user1.com").first if !i.even?
      addr.business_name = Faker::Company.name
      addr.web_site = Faker::Internet.url
      addr.country = Country.where(code_iso2: fk_addr.country_code).first || Country.where(code_iso2: "BR").first
      addr.state = fk_addr.state_abbr
      addr.city = fk_addr.city
      addr.district = fk_addr.city
      addr.zip_code = fk_addr.zip_code
      addr.street = fk_addr.street_name
      addr.number = fk_addr.building_number
      addr.complement = fk_addr.secondary_address
      addr.email= Faker::Internet.email
      addr.phone= "+5521992064121"
      addr.crypto_currencies_accepted=["119", "120", "130", "145", "345", "122", "144", "155"]
      addr.categories= Category.first(5)
      addr.latitude = fk_addr.latitude
      addr.longitude = fk_addr.longitude
      puts addr.save
    end
  end

  def self.donate_info
    puts "btc: " + "#{DonateInfo.create(currency: Currency.where(name: "Bitcoin").first, address: '1E2WdXsuSxrzhvUWjYJz26CCaU3RqeW1Zp') ? 'Saved' : 'Failed' }"
    puts "ltc: " + "#{DonateInfo.create(currency: Currency.where(name: "Litecoin").first, address: 'LWtXEUBpWK2CDppsPQ2ANtMQYaHjxc8DYJ') ? 'Saved' : 'Failed'}"
    puts "eth: " + "#{DonateInfo.create(currency: Currency.where(name: "Ethereum").first, address: '0xd4cf2a093f13f20ed3e44b4c1679fb0e3cf0e0a1') ? 'Saved' : 'Failed'}"
    puts "dash: " +"#{DonateInfo.create(currency: Currency.where(name: "Dash").first, address: 'XqSEoSjJvgZHd8xKE5HqWp3kdUHRKwPC6c') ? 'Saved' : 'Failed'}"
    puts "zcs: " + "#{DonateInfo.create(currency: Currency.where(name: "Zcash").first, address: 't1JJgMwBYqQ9eTjq5GjXsxENgVYHSwUvpZD') ? 'Saved' : 'Failed'}"
    puts "neo: " + "#{DonateInfo.create(currency: Currency.where(name: "NEO").first, address: 'AZtFZtCmDhJTjZ2yzv1DBc41Tz6HjVp1MA') ? 'Saved' : 'Failed'}"


  end

  def self.addresses_from_coinmap
    addrs_saved = 0
    addrs_failed = 0

    venues_file = File.read('parse_coinmap_venues.json')
    venues_local = JSON.parse(venues_file)

    venues = venues_local['venues']
    venues.each do |v|
      addr = Address.new
      addr.user=User.where(email: 'jvsdc1992@gmail.com').first

      addr.business_name = v['name']
      if Address.where(business_name: addr.business_name).size > 0
        exist = false
        Address.where(business_name: addr.business_name).each do |addr|
          if (addr.street == v['street']) && (addr.number == v['number'])
            exist = true
            break
          end
        end
        if exist
          puts "#{addr.business_name} - failed(Already exist)"
          next
        end
      end

      if Category.where(name: v['category']).size > 0
        addr.categories=Category.where(name: v['category'])
      else
        n_cat = Category.create(name: v['category'].to_s.capitalize)
        addr.categories=[n_cat]
      end

      addr.latitude = v['lat']
      addr.longitude = v['lon']

      addr.description = v['description']
      addr.web_site = v['website']
      addr.facebook_page = v['facebook']
      addr.email = v['email']
      addr.phone = v['phone']
					if      Country.where(code_iso2: v['country']).size == 0
next
else
	addr.country = Country.where(code_iso2: v['country']).first
end
      addr.state = v['state']
      addr.city = v['city']
      addr.zip_code= v['zip_code']
      addr.street = v['street']
      addr.number= v['number']
      addr.complement= v['complement']
      addr.reference_point= v['reference_point']
      addr.currencies = Currency.where(name: "Bitcoin")
      if addr.save
        puts "- saved - #{addr.business_name} "
        addrs_saved +=1
      else
        puts "- failed - #{addr.business_name} - (#{addr.errors.messages.inspect})"
        addrs_failed +=1
      end
    end

    puts "addresses saved: #{addrs_saved}"
    puts "addresses failed: #{addrs_failed}"
  end
end

#real = FiatCurrency.create(country_name: 'Brasil', name: 'Real', code: 'BRL', symbol: 'R$')
#novo_sol = FiatCurrency.create(country_name: 'Peru', name: 'Nuevo Sol', code: 'PEN', symbol: 'S/.')
#peso_uruguaio = FiatCurrency.create(country_name: 'Uruguai', name: 'Peso Uruguaio', code: 'UYU', symbol: '$')
#peso_argentino = FiatCurrency.create(country_name: 'Argentina', name: 'Peso Argentino', code: 'ARS', symbol: '$')
#peso_chileno = FiatCurrency.create(country_name: 'Chile', name: 'Peso Chileno', code: 'CLP', symbol: '$')
#guarani = FiatCurrency.create(country_name: 'Paraguai', name: 'Guarani', code: 'CLP', symbol: '₲')

#bitcoin = CryptoCurrency.create(name: 'Bitcoin', code: 'BTC', symbol: 'Ƀ')
#litecoin = CryptoCurrency.create(name: 'Litecoin', code: 'LTC', symbol: 'Ł')
#dogecoin = CryptoCurrency.create(name: 'Dogecoin', code: 'DOGE', symbol: 'Ð')


#DbFeed.countries
#DbFeed.fiat_currencies
#DbFeed.users
#DbFeed.crypto_currencies
#DbFeed.donate_info
#DbFeed.categories
#DbFeed.address_faker
DbFeed.addresses_from_coinmap
