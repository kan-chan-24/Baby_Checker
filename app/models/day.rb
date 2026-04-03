class Day < ApplicationRecord
  # 空の入力を防ぐ
  validates :i_day, { presence: true }
end
