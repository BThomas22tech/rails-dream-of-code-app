# frozen_string_literal: true

class AdminDashboardController < ApplicationController
  def index
    @current_trimester = Trimester.where('start_date <= ?', Time.zone.today).where('end_date >= ?',Time.zone.today).first
   
    @upcoming_trimester = Trimester.where("start_date >= ?",Time.zone.today).where('end_date >=?',Time.zone.today).first
  end
  
end
