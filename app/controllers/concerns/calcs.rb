module Calcs
  extend ActiveSupport::Concern
  included do

    # 今日が誕生日か判別
    def birthday
      case @monthday
      when Date.today.strftime("%m%d").to_i
        @todayBD = "今日があなたの誕生日です。"
      end
    end

    # 星座判別
    def zodiac
      @zodiac = case @monthday
                when (101..119) 
                  "山羊座"
                when (120..218) 
                  "水瓶座"
                when (219..320) 
                  "魚座"
                when (321..419) 
                  "牡羊座"
                when (420..520) 
                  "牡牛座"
                when (521..621) 
                  "双子座"
                when (622..722) 
                  "蟹座"
                when (723..822) 
                  "獅子座"
                when (823..922) 
                  "乙女座"
                when (923..1023) 
                  "天秤座"
                when (1024..1122) 
                  "蠍座"
                when (1123..1221) 
                  "射手座"
                when (1222..1231) 
                  "山羊座"
                end
    end

    # 年齢判別
    def age
      @age = (Date.today.strftime("%Y%m%d").to_i - @DOB.to_i) / 10000  
    end

    # 運勢
    def fortune
      @fortune = %w(大吉 中吉 吉 小吉 凶 大凶).sample
    end
  end
end