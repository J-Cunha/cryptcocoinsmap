class DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:index, :addresses, :avaliations, :contacts]
  def index
    @addresses = current_user.addresses
  end

  def addresses

  end

  def avaliations
  end

  def contacts
  end
end
