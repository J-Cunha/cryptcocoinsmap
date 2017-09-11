require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://coinmarketcap.com/currencies/views/all/"))
allTr = page.css('tr')
puts allTr.length
allTr.each do |tr|
  allTd = (tr.css('td'))
  if !allTd[2].nil?
    name = allTd[1].text.to_s.delete("\t").delete("\n").split.join("-")
    puts "name: #{name} "
    #name = allTd[1].text.to_s.delete("\t").delete("\n").delete(" ")
    #next block
    ########################################################
    next if name.to_s.end_with?('...')
    if File.exist?("app/assets/images/coins_icons/#{name}.png")
      puts  "#{name} icon already exists"
      next
    end
    ########################################################
    #next block
    # current_page = nil
    begin
      currency_page  = Nokogiri::HTML(open("https://coinmarketcap.com/currencies/#{name.downcase}/"))
    rescue OpenURI::HTTPError => e
      begin
      currency_page  = Nokogiri::HTML(open("https://coinmarketcap.com/assets/#{name.downcase}/"))
      rescue OpenURI::HTTPError => e
        next
      end
    end
    img = currency_page.css('img.currency-logo-32x32')
    img_url = img[0].attr('src').to_s

    open("app/assets/images/coins_icons/#{name}.png", 'wb') do |file|
      file << open(img_url).read
      puts  "#{name} icon downloaded"

    end
    # if allTd[1].text.to_s.delete("\t").delete("\n") == ("Huncoin") #
  end
end
