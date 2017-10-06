class DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:index, :addresses, :avaliations, :contacts]
  def index
    redirect_to edit_user_registration_path
  end

  def addresses

  end

  def avaliations
  end

  def contacts
  end
end
