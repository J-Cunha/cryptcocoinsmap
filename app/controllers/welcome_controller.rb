class WelcomeController < ApplicationController
  include ActionView::Helpers::TagHelper
  attr_accessor :output_buffer

  def index
    @addresses = nil
    if params[:filter_countries]
      f_countries = params[:filter_countries]
      @addresses = Address.from_countries(f_countries)
    else
      #@addresses = Address.all
      @addresses = Address.all.includes(:categories, :currencies)
    end
    @countries = Country.all.order(:name_en)
    @crypto_currencies = CryptoCurrency.all
    @languages = Language.all
    @categories = Category.all
    @hash = Gmaps4rails.build_markers(@addresses) do |address, marker|
      marker.lat address.latitude
      marker.lng address.longitude
      marker.picture({
                         "url" => "#{ActionController::Base.helpers.asset_url('marker.png')}",
                         "width" => 32,
                         "height" => 32
                     })
      info_window_content =""

      info_window_content += content_tag(:div, :class => 'countainer-fluid') do
        #title - Business Name
        content_tag(:h4) do
          ActionController::Base.helpers.link_to(address.business_name, address_path(address), target: :_blank, class: 'infobox-website-link')
        end
        #country
      end
      #categories
      address.categories.first(3).each do |c|
        info_window_content += content_tag(:div, :class => 'infobox-attr-category-container') do
          content_tag(:div, "", :class => 'infobox-tag-icon')+
              content_tag(:a, "#{c.name}", :href => "http://localhost:3000/categories/#{c.id}", :class => 'address_property_value infobox-link')
        end
      end
      info_window_content += content_tag(:div, "", :class => 'infobox-divisor')

      #Country
      info_window_content += content_tag(:div, :class => 'infobox-attr-container') do
        content_tag(:div, "", :class => 'infobox-flag-icon') +
            content_tag(:div, :class => 'address_property_value') do
              "#{address.city},  #{address.state}, #{address.country.name }"
              # content_tag(:a,  "{c.name}",:href => "http://localhost:3000/categories/", :class => 'address_property_value')
            end
      end
      #Fullstreet
      info_window_content += content_tag(:div, :class => 'infobox-attr-container') do
        content_tag(:div, "", :class => 'infobox-street-icon') +
            content_tag(:div, :class => 'address_property_value') do
              "#{address.full_street}"
              # content_tag(:a,  "{c.name}",:href => "http://localhost:3000/categories/", :class => 'address_property_value')
            end
      end
      #add website to infowindow
      unless (address.web_site.nil?) || (address.web_site.empty?)
        info_window_content += content_tag(:div, :class => 'infobox-attr-container') do
          content_tag(:div, "", :class => 'infobox-website-icon') +
              content_tag(:div, :class => 'address_property_value infobox-website-link') do
                ActionController::Base.helpers.link_to(address.web_site, address.web_site, target: :_blank, class: 'infobox-website-link')
                # content_tag(:a,  "{c.name}",:href => "http://localhost:3000/categories/", :class => 'address_property_value')
              end
        end
      end
      #add phone numbers to infowindow
      unless (address.phone.nil?) || (address.phone.empty?)
        info_window_content += content_tag(:div, :class => 'infobox-attr-container') do
          content_tag(:div, "", :class => 'infobox-phone-icon') +
              content_tag(:div, :class => 'address_property_value') do
                "#{address.phone}"
                # content_tag(:a,  "{c.name}",:href => "http://localhost:3000/categories/", :class => 'address_property_value')
              end
        end
      end
      #add  emails to infowindow
      unless (address.email.nil?) || (address.email.empty?)
        info_window_content += content_tag(:div, :class => 'infobox-attr-container') do
          content_tag(:div, "", :class => 'infobox-email-icon') +
              content_tag(:div, :class => 'address_property_value') do
                "#{address.email}"
                # content_tag(:a,  "{c.name}",:href => "http://localhost:3000/categories/", :class => 'address_property_value')
              end
        end
      end

      #add cryptocurrencies to infowindow
      info_window_content += content_tag(:div, :class => 'infobox-accepted-coins-container') do
        a = ActiveSupport::SafeBuffer.new
        address.currencies.first(10).collect do |coin_accepted|
          a << content_tag(:a, :href => currency_path(coin_accepted)) do
            if (Rails.application.assets.find_asset "coins_icons/#{coin_accepted.name.split.join('-')}.png")
              ActionController::Base.helpers.link_to ActionController::Base.helpers.image_tag("coins_icons/#{coin_accepted.name.split.join('-')}.png", class: 'infobox-currency-logo-16x16'), currency_path(coin_accepted)
            else
              ActionController::Base.helpers.link_to(coin_accepted.name, currency_path(coin_accepted), class: 'infobox-coin-name-link')
            end
          end
        end
        if address.currencies.size > 10
          a << ActionController::Base.helpers.link_to("...", address_path(address), class: 'infobox-3dots-link')
        end

        a
      end
      marker.infowindow info_window_content
    end
  end

  def report
  end

  def donate
    @donate_infos = DonateInfo.all
  end
end
