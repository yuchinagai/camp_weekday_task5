class FortunetellingsController < ApplicationController
  include Calcs
  def show
    @DOB = params[:DOB]
    @DOByear = @DOB[0..3]
    @DOBmonth = @DOB[4..5]
    @DOBday = @DOB[6..7]
    @monthday = @DOBmonth.to_i*100 + @DOBday.to_i
    birthday # 今日が誕生日か判別
    zodiac   # 星座判別
    age      # 年齢判別
    fortune  # 運勢
  end
end