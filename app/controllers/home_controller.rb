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

  def january   
    @start_at = Date.new(2017,1,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def february   
    @start_at = Date.new(2017,2,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def march   
    @start_at = Date.new(2017,3,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def april   
    @start_at = Date.new(2017,4,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def may   
    @start_at = Date.new(2017,5,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def june   
    @start_at = Date.new(2017,6,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def july   
    @start_at = Date.new(2017,7,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def august   
    @start_at = Date.new(2017,8,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def september  
    @start_at = Date.new(2017,9,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def october   
    @start_at = Date.new(2017,10,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def november   
    @start_at = Date.new(2017,11,1)
    @end_at = (@start_at >> 1) - 1
    @chart = common_process(@start_at,@end_at)
  end

  def december    
    @start_at = Date.new(2017,12,1)
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
