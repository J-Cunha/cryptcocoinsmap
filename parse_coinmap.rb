require 'net/http'
require 'json'

url = 'https://coinmap.org/api/v1/venues/'
uri = URI(url)
response = Net::HTTP.get(uri)
json = JSON.parse(response)

venues_file = File.read('parse_coinmap_venues.json') if File.exist?('parse_coinmap_venues.json')
venues_local = JSON.parse(venues_file) if File.exist?('parse_coinmap_venues.json')

venues = json['venues']
business_added_tot = 0
business_exist_tot = 0

venues.each do |v|
  if !venues_local.nil?
    if venues_local['venues'].any? {|vl| vl['id'] == v['id']}
      puts "#{business_exist_tot += 1}: #{v['name']} exists in local file"
      next
    end
  else
    venues_local = {'venues' => []}
  end
  #v['id']
  #v['name']
  #v['lat']
  #v['lon']
  details_response = Net::HTTP.get(URI("https://coinmap.org/api/v1/venues/#{v['id'].to_s}"))
  details_json = JSON.parse(details_response)
  details = details_json['venue']

  v['description'] = details['description']

  v['web_site'] = details['website']
  v['email'] = details['email']
  v['facebook'] = details['facebook']

  v['country'] = details['country']
  v['state'] = details['state']
  v['city'] = details['city']
  v['zip_code'] = details['postcode']
  v['street'] = details['street']
  v['number'] = details['houseno']
  v['complement'] = details['complement']
  v['reference_point'] = details['reference_point']
  venues_local['venues'] << v
  puts "#{business_added_tot += 1}: #{v['name']}"
  if business_added_tot%25 == 0
    File.write('parse_coinmap_venues.json', venues_local.to_json)
    p 'File Saved'
  end
end

