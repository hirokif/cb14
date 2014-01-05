class Grp < ActiveRecord::Base
  validates :grp_name,
  presence: {message: "入力してください"},
  uniqueness: {message: "同じ項目があります"}
end
