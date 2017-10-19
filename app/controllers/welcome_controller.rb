class WelcomeController < ApplicationController
  attr_accessor :output_buffer

  def index
    #@addresses = Address.all
    @addresses = Address.all.includes(:categories, :currencies, :country)
    #@countries = Country.all.order(:name_en)
    #@crypto_currencies = CryptoCurrency.all
    #@languages = Language.all
    #@categories = Category.all
    cache = Rails.cache.read(:markers_hash)
    if cache.nil?
      feed_marker_hash
    else
      @hash = cache
    end


  end
  def report
  end

  def donate
    @donate_infos = DonateInfo.all
  end

  private
  def feed_marker_hash
    @hash = Gmaps4rails.build_markers(@addresses) do |address, marker|
      marker.lat address.latitude
      marker.lng address.longitude
      marker.picture({
                         "url" => "#{ActionController::Base.helpers.asset_url('marker.png')}",
                         "width" => 32,
                         "height" => 32
                     })
      info_window_content =""

      info_window_content += "<h4><a href=\"http://cryptocoinsmap.info/addresses/#{address.id }\" target=\"_blank\">#{address.business_name}</a></h4>"

      #categories
      address.categories.first(3).each do |c|
        info_window_content += "<div class = \"infobox-attr-category-container\">"+
            "<div class = \"infobox-tag-icon\"></div>"+
            "<div class = \"address_property_value\">"+
            "<a href=\"http://cryptocoinsmap.info/categories/#{c.id }\" target=\"_blank\" class=\"infobox-website-link\">#{c.name}</a>"+
            "</div>"+
            "</div>"
      end
      info_window_content += "<div class=\"infobox-divisor\"></div>"

      #Country
      info_window_content += "<div class = \"infobox-attr-container\">"+
          "<div class = \"infobox-flag-icon\"></div>"+
          "<div class = \"address_property_value\">"+

          #"<a href=\"http://cryptocoinsmap.info/countries/#{address.country.id}\" target=\"_blank\" class=\"infobox-website-link\">#{address.country.name}</a>"+
          "#{address.country.name}"+
          "</div>"+
          "</div>"
      info_window_content += "<div class = \"infobox-attr-container\">"+
          "<div class = \"infobox-street-icon\"></div>"+
          "<div class = \"address_property_value\">"+
          "#{address.full_street}"+
          "</div>"+
          "</div>"
      unless (address.web_site.nil?) || (address.web_site.empty?)
        info_window_content += "<div class = \"infobox-attr-container\">"+
            "<div class = \"infobox-website-icon\"></div>"+
            "<div class = \"address_property_value infobox-website-link\">"+
            "<a href=\"#{address.web_site}\" target=\"_blank\" class=\"infobox-website-link\">#{address.web_site}</a>"+
            "</div>" +
            "</div>"
      end
      unless (address.email.nil?) || (address.email.empty?)
        info_window_content += "<div class = \"infobox-attr-container\">"+
            "<div class = \"infobox-email-icon\"></div>"+
            "<div class = \"address_property_value \">"+
            "#{address.email}"+
            "</div>" +
            "</div>"
      end
      unless (address.phone.nil?) || (address.phone.empty?)
        info_window_content += "<div class = \"infobox-attr-container\">"+
            "<div class = \"infobox-phone-icon\"></div>"+
            "<div class = \"address_property_value\">"+
            "#{address.phone}"+
            "</div>" +
            "</div>"
      end

      info_window_content += "<div class=\"infobox-divisor\"></div>"

      info_window_content += "<div class = \"infobox-accepted-coins-container\">"
      address.currencies.first(3).each do |coin_accepted|
        info_window_content += "<a href=\"http://cryptocoinsmap.info/currencies/#{coin_accepted.id}\">#{coin_accepted.name}</a><br>"
      end
      if address.currencies.size > 3
        info_window_content += "<a class=\"infobox-3dots-link\" href=\"http://cryptocoinsmap.info/addresses/#{address.id }\" target=\"_blank\">...</a></h4>"
      end
      info_window_content += "</div>"

      marker.infowindow info_window_content
    end
    Rails.cache.fetch(:markers_hash, expires_in: 1.hour) do
      @hash
    end
  end
end
