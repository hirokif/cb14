class Corp < ActiveRecord::Base
  
  validates :grp_no,
  presence: {message: "入力してください"},
  uniqueness: {message: "同じ項目があります"}
end
