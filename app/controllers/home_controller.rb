class HomeController < ApplicationController
  def main
  end

  def calendar
  
    @today = Date.today
    
    if params[:now]
      @now = Date.strptime(params[:now])
      if params[:number] == "1"
        @now = @now.next_month
      elsif params[:number] == "-1"
        @now = @now.last_month
      elsif params[:number] == "0"
        @now = Date.current
      end
    else
      @now = Date.current
    end

  end

  def select
    if params[:push_day]
      session[:push_day] = params[:push_day]
   end

   @push_day = session[:push_day]
  end

  def chart
    @today = Date.today

    if params[:now]
      @now = Date.strptime(params[:now])
      if params[:number] == "1"
        @now = @now.next_year
      elsif params[:number] == "-1"
        @now = @now.last_year
      elsif params[:number] == "0"
        @now = Date.current
      end
    else
      @now = Date.current
    end

    if params[:push_year]
      session[:push_year] = params[:push_year]
    end
  
    @push_year = session[:push_year]
  end

  def january   
    p_year = params[:push_year]
    @start_at = Date.new(p_year.to_i,1,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def february   
    p_year = params[:push_year]
    @start_at = Date.new(p_year.to_i,2,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def march   
    p_year = params[:push_year]
    @start_at = Date.new(p_year.to_i,3,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def april   
    p_year = params[:push_year]
    @start_at = Date.new(p_year.to_i,4,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def may   
    p_year = params[:push_year]
    @start_at = Date.new(p_year.to_i,5,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def june   
    p_year = params[:push_year]
    @start_at = Date.new(p_year.to_i,6,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def july   
    p_year = params[:push_year]
    @start_at = Date.new(p_year.to_i,7,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def august   
    p_year = params[:push_year]
    @start_at = Date.new(p_year.to_i,8,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def september  
    p_year = params[:push_year]
    @start_at = Date.new(p_year.to_i,9,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def october   
    p_year = params[:push_year]
    @start_at = Date.new(p_year.to_i,10,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def november   
    p_year = params[:push_year]
    @start_at = Date.new(p_year.to_i,11,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def december
    p_year = params[:push_year]
    @start_at = Date.new(p_year.to_i,12,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  private
  def common_process(start_at,end_at)
    @feelings = []
    @dates = []
    @hearts = Heart.where(date:start_at..end_at)
logger.debug("********")
logger.debug(@hearts.inspect)
logger.debug(start_at)
logger.debug(end_at)
logger.debug("********")
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','悲しい','泣きたい','笑いたい','うれしい']

    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
    return @chart 
  end
end
