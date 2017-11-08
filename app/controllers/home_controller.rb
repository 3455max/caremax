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
    @end_at = Date.new(2017,1,31)
    @start_at = @end_at - 30
    @categories = @start_at.upto(@end_at).to_a
    @categories.each_with_index {|item,i|
      @categories[i] = item.strftime("%d日")      
    }
    @sample = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31  ]

    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @categories)
      c.series(name: "気持ち", data: @sample)
    end
  end

  def february    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @end_at = Date.new(2016,2,29)
    @start_at = @end_at - 28
    @categories = @start_at.upto(@end_at).to_a
    @categories.each_with_index {|item,i|
      @categories[i] = item.strftime("%d日")      
    }
    @sample = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,  ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @categories)
      c.series(name: "気持ち", data: @sample)
    end
  end
  def march    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @end_at = Date.new(2017,3,31)
    @start_at = @end_at - 3
    @categories = @start_at.upto(@end_at).to_a
    @categories.each_with_index {|item,i|
      @categories[i] = item.strftime("%d日")      
    }
    @sample = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31  ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @categories)
      c.series(name: "気持ち", data: @sample)
    end
  end
  def april    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @end_at = Date.new(2017,4,30)
    @start_at = @end_at - 29
    @categories = @start_at.upto(@end_at).to_a
    @categories.each_with_index {|item,i|
      @categories[i] = item.strftime("%d日")      
    }
    @sample = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @categories)
      c.series(name: "気持ち", data: @sample)
    end
  end
  def may    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @end_at = Date.new(2017,5,31)
    @start_at = @end_at - 30
    @categories = @start_at.upto(@end_at).to_a
    @categories.each_with_index {|item,i|
      @categories[i] = item.strftime("%d日")      
    }
    @sample = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31  ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @categories)
      c.series(name: "気持ち", data: @sample)
    end
  end
  def june    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @end_at = Date.new(2017,6,30)
    @start_at = @end_at - 29
    @categories = @start_at.upto(@end_at).to_a
    @categories.each_with_index {|item,i|
      @categories[i] = item.strftime("%d日")      
    }
    @sample = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @categories)
      c.series(name: "気持ち", data: @sample)
    end
  end
  def july    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @end_at = Date.new(2017,7,31)
    @start_at = @end_at - 30
    @categories = @start_at.upto(@end_at).to_a
    @categories.each_with_index {|item,i|
      @categories[i] = item.strftime("%d日")      
    }
    @sample = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31  ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @categories)
      c.series(name: "気持ち", data: @sample)
    end
  end
  def august    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @end_at = Date.new(2017,8,31)
    @start_at = @end_at - 30
    @categories = @start_at.upto(@end_at).to_a
    @categories.each_with_index {|item,i|
      @categories[i] = item.strftime("%d日")      
    }
    @sample = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31  ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @categories)
      c.series(name: "気持ち", data: @sample)
    end
  end
  def september    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @end_at = Date.new(2017,9,30)
    @start_at = @end_at - 29
    @categories = @start_at.upto(@end_at).to_a
    @categories.each_with_index {|item,i|
      @categories[i] = item.strftime("%d日")      
    }
    @sample = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @categories)
      c.series(name: "気持ち", data: @sample)
    end
  end
  def october    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @end_at = Date.new(2017,10,31)
    @start_at = @end_at - 30
    @categories = @start_at.upto(@end_at).to_a
    @categories.each_with_index {|item,i|
      @categories[i] = item.strftime("%d日")      
    }
    @sample = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31  ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @categories)
      c.series(name: "気持ち", data: @sample)
    end
  end
  def november    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @end_at = Date.new(2017,11,30)
    @start_at = @end_at - 29
    @categories = @start_at.upto(@end_at).to_a
    @categories.each_with_index {|item,i|
      @categories[i] = item.strftime("%d日")      
    }
    @sample = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30 ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @categories)
      c.series(name: "気持ち", data: @sample)
    end
  end
  def december    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    @end_at = Date.new(2017,12,31)
    @start_at = @end_at - 30
    @categories = @start_at.upto(@end_at).to_a
    @categories.each_with_index {|item,i|
      @categories[i] = item.strftime("%d日")      
    }
    @sample = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31  ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: @categories)
      c.series(name: "気持ち", data: @sample)
    end
  end

end
