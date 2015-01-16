class Cdc < ActiveRecord::Base
  belongs_to :corp,
    :primary_key => 'corp_no',
    :foreign_key => 'corp_no'

  belongs_to :toi,
    :primary_key => 'toi_no',
    :foreign_key => 'toi_no'

  has_many :crbs,
    :primary_key => 'corp_no',
    :foreign_key => 'corp_no'

  accepts_nested_attributes_for :crbs

end
