class Toi < ActiveRecord::Base
  belongs_to :grp
  validates :toi_name,
  presence: {message: "入力してください"},
  uniqueness: {message: "同じ項目があります"}
end
