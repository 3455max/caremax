class SalesController < ApplicationController
  def index
    # (...データベースからのデータ取得処理...)
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
