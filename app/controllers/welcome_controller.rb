class WelcomeController < ApplicationController
  def index
    @addresses = nil
    if params[:filter_countries]
      f_countries = params[:filter_countries]
      @addresses = Address.from_countries(f_countries)
    else
      @addresses = Address.all
    end
    @countries = Country.all.order(:name_en)
    @crypto_currencies = CryptoCurrency.all
    @languages = Language.all
    @categories = Category.all
    @hash = Gmaps4rails.build_markers(@addresses) do |address, marker|
      marker.lat address.latitude
      marker.lng address.longitude
      marker.picture({
                         "url" => "http://localhost:3000#{ActionController::Base.helpers.asset_path('marker.png')}",
                         "width" =>  32,
                         "height" => 32
                     })

      info_window_html = "<div class=\"countainer-fluid\">"+
      info_window_title = "<h5><a href=\"http://localhost:3000/addresses/#{address.id}\">#{address.business_name}</a></h5>"

      #bussiness categories
      categories =  "<div class=\"infobox-tag-icon\"> </div>"+
                    "<div class=\"address_property_value\">"
                      address.categories.each {|c| categories += "<a href=\"http://localhost:3000/categories/#{c.id}\"> #{c.name} </a> "}
      categories += "</div>"

      info_window_country = "<div >"+#state and country
                            "<div class=\"infobox-flag-icon\"> </div>"+
                            "<div class=\"address_property_value\">#{address.city}, #{address.state}, #{address.country.name} </div>"+
                            "</div>"
      info_window_addr = "<div>"+ #full street address (street, number, complement)
                            "<div class=\"infobox-street-icon\"> </div>"+
                            "<div class=\"address_property_value\">#{address.full_street} </div>"+
                          "</div>"


      #add phone numbers to infowindow
      info_window_phones = ""
      address.phone_numbers.each do |pn|
        info_window_phones += "<div>"+
                              "<div class=\"infobox-phone-icon\"> </div>"+
                              "<div class=\"address_property_value\">#{pn}</div>"+
                              "</div>"
      end
      #add  emails to infowindow
      info_window_emails= ""
      address.emails.each do |em|
        info_window_emails += "<div>"+
                              "<div class=\"infobox-email-icon\"> </div>"+
                              "<div class=\"address_property_value\">#{em} </div>"+
                              "</div>"
      end
      #add cryptocurrencies to infowindow
      info_window_crypto = "<div id=\"accepted-coins\" >"
      address.crypto_currencies_accepted.each do |coin_accepted|
        info_window_crypto +=  "<img class=\"infobox-currency-logo-16x16\" alt=\"#{coin_accepted}\" src=\"http://localhost:3000#{ActionController::Base.helpers.asset_path("coins_icons/#{coin_accepted.split.join('-')}")}\" > </img>"
      end
      info_window_html += "</div>" #close accepted-coins


      info_window_html +=  categories + info_window_country + info_window_addr
      info_window_html += info_window_phones + info_window_emails+ info_window_crypto
      info_window_html += "</div>" #close container-fluid

      marker.infowindow info_window_html
    end
  end
  def report

    end
  def donate

  end
end
