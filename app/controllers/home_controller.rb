class HomeController < ApplicationController
  def top
    # データベース（id:1）にデータがあれば、削除し、初期化する
    days = Day.find_by(id: 1)
    if days
      days.destroy
    end

    # データベース（id:2）にデータがあれば、削除し、初期化する
    days = Day.find_by(id: 2)
    if days
      days.destroy
    end
  end

  def input
  end

  def submit
    # データベースid:2に、入力された日付(誕生日)を保存
    @b_day = Day.new(id: 2, i_day: params[:birth_day])
    if @b_day.save # 日付が保存できた場合（バリデーション）
      # 現在の日付を取得し、データベースid:1に保存
      @today = Day.new(id: 1, i_day: Date.current)
      @today.save
      redirect_to("/result")
    end
  end

  def result
    @today = Day.find_by(id: 1)
    @b_day = Day.find_by(id: 2)
  end
end
