class DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:index, :addresses, :avaliations, :contacts]
  def index
    redirect_to addresses_path
  end

  def addresses

  end

  def avaliations
  end

  def contacts
  end
end
