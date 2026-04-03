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
    # 入力された日付(誕生日)を受け取り、データベースへ保存
    @days = Day.new(i_day: params[:birth_day])
    if @days.save
      # 日付が保存できた場合（バリデーション）
      redirect_to("/result")
    else
      # 日付が保存できなかった場合（バリデーション）
      redirect_to("/input")
    end
  end

  def result
    @days = Day.find_by(id: 1)
  end
end
