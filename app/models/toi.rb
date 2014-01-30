class Toi < ActiveRecord::Base
  belongs_to :grp,
  :class_name => 'Grp',
  :primary_key => 'grp_no',
  :foreign_key => 'grp_no'
  validates :toi_name,
  presence: {message: "入力してください"},
  uniqueness: {message: "同じ項目があります"}
end
