class ApplicationController < ActionController::Base
  before_action :set_locale, :set_variables
  protect_from_forgery with: :exception


  def set_variables
    @categories = Category.all.order(:name)
    @crypto_currencies = CryptoCurrency.all

  end
  def default_url_options
    { locale: I18n.locale }
  end
  def set_locale
    puts "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"
    puts extract_locale_from_accept_language_header.inspect
    if (params[:locale].nil? || params[:locale].empty? || I18n.locale_available?( params[:locale] )==false)
      I18n.locale = "pt_BR"
    else
      if I18n.locale_available? params[:locale]
        I18n.locale = params[:locale]
      end
    end
  end
  private
  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end

end
