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

  def january    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @start_at = Date.new(2017,1,1)
    @end_at = (@start_at >> 1) - 1
    #@categories = @start_at.upto(@end_at).to_a
    #@categories.each_with_index {|item,i|
    #  @categories[i] = item.strftime("%d日")      
    #}
    #@sample = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31  ]
    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << 6-heart.mind.id
    end

    @feels = ['','腹立つ','笑いたい','悲しい','泣きたい','嬉しい']

    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @dates)
      c.yAxis(title: {text:""}, categories: @feels, gridLineColor: "#ffffff")
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def february    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @start_at = Date.new(2017,2,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << heart.mind.id
    end

    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @dates)
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def march    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @start_at = Date.new(2017,3,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << heart.mind.id
    end

    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @dates)
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def april    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @start_at = Date.new(2017,4,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << heart.mind.id
    end

    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @dates)
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def may    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @start_at = Date.new(2017,5,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << heart.mind.id
    end

    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @dates)
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def june    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @start_at = Date.new(2017,6,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << heart.mind.id
    end

    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @dates)
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def july    # (...データベースからのデータ取得処理...)
    @start_at = Date.new(2017,7,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << heart.mind.id
    end

    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @dates)
      c.series(name: "気持ち", data: @feelings)
    end
  end
  def august    # (...データベースからのデータ取得処理...)
    @start_at = Date.new(2017,8,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << heart.mind.id
    end

    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @dates)
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def september    # (...データベースからのデータ取得処理...)
    @start_at = Date.new(2017,9,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << heart.mind.id
    end

    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @dates)
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def october    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @start_at = Date.new(2017,10,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << heart.mind.id
    end

    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @dates)
      c.series(name: "気持ち", data: @feelings)
    end
  end
  def november    # (...データベースからのデータ取得処理...)
    @start_at = Date.new(2017,11,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << heart.mind.id
    end

    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @dates)
      c.series(name: "気持ち", data: @feelings)
    end
  end

  def december    # (...データベースからのデータ取得処理...)
    @start_at = Date.new(2017,12,1)
    @end_at = (@start_at >> 1) - 1

    @feelings = []
    @dates = []
    @hearts = Heart.where(date:@start_at..@end_at)
    
    @hearts.each do |heart|
      @dates << heart.date.strftime("%d日")
      @feelings << heart.mind.id
    end

    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @dates)
      c.series(name: "気持ち", data: @feelings)
    end
  end

end
