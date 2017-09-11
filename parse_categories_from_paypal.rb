require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://developer.paypal.com/docs/classic/adaptive-accounts/integration-guide/ACBusinessCategories/"))
allTr = page.css('tr')
puts allTr.length
allTr.each do |tr|
  allTd = (tr.css('td'))
  if !allTd[1].nil?
      #category_id =allTd[0].text.to_s.delete("\t").delete("\n").delete(" ")
      name =allTd[1].text.to_s.delete("\t").delete("\n")
      Category.create(name: name)
  end
end
