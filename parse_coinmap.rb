
require 'net/http'
require 'json'

url = 'https://coinmap.org/api/v1/venues/'
uri = URI(url)
response = Net::HTTP.get(uri)
json = JSON.parse(response)

venues = json['venues'].first(3)
venues.each do |v|
  puts coin_map_id = v['id']
  puts name = v['name']
  puts category = v['category']
  puts latitude = v['lat']
  puts longitude = v['lon']

  details_response = Net::HTTP.get(URI("https://coinmap.org/api/v1/venues/#{coin_map_id.to_s}"))
  details_json = JSON.parse(details_response)
  puts details = details_json['venue']

  puts description = details['description']

  puts web_site = details['website']
  puts email = details['email']
  puts facebook = details['facebook']

  puts country = details['country']
  puts state = details['state']
  puts city = details['city']
  puts zip_code= details['postcode']
  puts street = details['street']


end

