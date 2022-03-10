class HomesController < ApplicationController
  before_action :authenticate_user!, excpt: [:top]
  def top
  end
  
end
