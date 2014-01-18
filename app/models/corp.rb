class Corp < ActiveRecord::Base
  
  validates :corp_no,
  presence: {message: "入力してください"},
  uniqueness: {message: "同じ項目があります"}
end
