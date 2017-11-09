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
    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','悲しい','泣きたい','笑いたい','嬉しい']

    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def february   
    @start_at = Date.new(2017,2,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','笑いたい','悲しい','泣きたい','嬉しい']    

    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def march   
    @start_at = Date.new(2017,3,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','笑いたい','悲しい','泣きたい','嬉しい']
    
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def april   
    @start_at = Date.new(2017,4,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','笑いたい','悲しい','泣きたい','嬉しい']
    
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def may   
    @start_at = Date.new(2017,5,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','笑いたい','悲しい','泣きたい','嬉しい']
    
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def june   
    @start_at = Date.new(2017,6,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','笑いたい','悲しい','泣きたい','嬉しい']
    
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def july   
    @start_at = Date.new(2017,7,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','笑いたい','悲しい','泣きたい','嬉しい']
    
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
  end
  def august   
    @start_at = Date.new(2017,8,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','笑いたい','悲しい','泣きたい','嬉しい']
    
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def september  
    @start_at = Date.new(2017,9,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','笑いたい','悲しい','泣きたい','嬉しい']
    
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def october   
    @start_at = Date.new(2017,10,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','笑いたい','悲しい','泣きたい','嬉しい']
    
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
  end
  def november   
    @start_at = Date.new(2017,11,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','笑いたい','悲しい','泣きたい','嬉しい']
    
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def december    
    @start_at = Date.new(2017,12,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','笑いたい','悲しい','泣きたい','嬉しい']
    
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
  end

end
