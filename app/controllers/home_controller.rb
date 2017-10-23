class HomeController < ApplicationController
  def main
  end

  def january    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    days = [ 4, 5, 6, 7, 8, 9 ]
    product_A_sales = [ 1_000_000, 1_200_000, 1_300_000,
      1_400_000, 1_200_000, 1_100_000 ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: days)
      c.series(name: "A", data: product_A_sales)
    end
  end

  def february    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    days = [ 4, 5, 6, 7, 8, 9 ]
    product_A_sales = [ 1_000_000, 1_200_000, 1_300_000,
      1_400_000, 1_200_000, 1_100_000 ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: days)
      c.series(name: "A", data: product_A_sales)
    end
  end
  def march    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    days = [ 4, 5, 6, 7, 8, 9 ]
    product_A_sales = [ 1_000_000, 1_200_000, 1_300_000,
      1_400_000, 1_200_000, 1_100_000 ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: days)
      c.series(name: "A", data: product_A_sales)
    end
  end
  def april    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    days = [ 4, 5, 6, 7, 8, 9 ]
    product_A_sales = [ 1_000_000, 1_200_000, 1_300_000,
      1_400_000, 1_200_000, 1_100_000 ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: days)
      c.series(name: "A", data: product_A_sales)
    end
  end
  def may    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    days = [ 4, 5, 6, 7, 8, 9 ]
    product_A_sales = [ 1_000_000, 1_200_000, 1_300_000,
      1_400_000, 1_200_000, 1_100_000 ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: days)
      c.series(name: "A", data: product_A_sales)
    end
  end
  def june    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    days = [ 4, 5, 6, 7, 8, 9 ]
    product_A_sales = [ 1_000_000, 1_200_000, 1_300_000,
      1_400_000, 1_200_000, 1_100_000 ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: days)
      c.series(name: "A", data: product_A_sales)
    end
  end
  def july    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    days = [ 4, 5, 6, 7, 8, 9 ]
    product_A_sales = [ 1_000_000, 1_200_000, 1_300_000,
      1_400_000, 1_200_000, 1_100_000 ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: days)
      c.series(name: "A", data: product_A_sales)
    end
  end
  def august    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    days = [ 4, 5, 6, 7, 8, 9 ]
    product_A_sales = [ 1_000_000, 1_200_000, 1_300_000,
      1_400_000, 1_200_000, 1_100_000 ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: days)
      c.series(name: "A", data: product_A_sales)
    end
  end
  def september    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    days = [ 4, 5, 6, 7, 8, 9 ]
    product_A_sales = [ 1_000_000, 1_200_000, 1_300_000,
      1_400_000, 1_200_000, 1_100_000 ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: days)
      c.series(name: "A", data: product_A_sales)
    end
  end
  def october    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    days = [ 4, 5, 6, 7, 8, 9 ]
    product_A_sales = [ 1_000_000, 1_200_000, 1_300_000,
      1_400_000, 1_200_000, 1_100_000 ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: days)
      c.series(name: "A", data: product_A_sales)
    end
  end
  def november    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    days = [ 4, 5, 6, 7, 8, 9 ]
    product_A_sales = [ 1_000_000, 1_200_000, 1_300_000,
      1_400_000, 1_200_000, 1_100_000 ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: days)
      c.series(name: "A", data: product_A_sales)
    end
  end
  def december    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    days = [ 4, 5, 6, 7, 8, 9 ]
    product_A_sales = [ 1_000_000, 1_200_000, 1_300_000,
      1_400_000, 1_200_000, 1_100_000 ]
    # グラフ（チャート）を作成 
    @chart = LazyHighCharts::HighChart.new("graph") do |c|    
     # c.title(text: "")
      c.xAxis(categories: days)
      c.series(name: "A", data: product_A_sales)
    end
  end

end
