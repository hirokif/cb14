# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#Corp.delete.all
#

# 'rake db:seed' でcsvファイルをインポート
# (db削除して初めからするときは　'rake db:migrate:reset')
require "csv"

CSV.foreach('db/corps.csv') do |row|
  Corp.create(
    :corp_no => row[0],
    :corp_name => row[1],
    :corp_namek => row[2],
    :corp_posi => row[3],
    :corp_rep => row[4],
    :corp_repk => row[5],
    :rep_bth => row[6],
    :corp_add => row[7],
    :corp_tel => row[8],
    :corp_fax => row[9],
    :corp_mail => row[10],
    :cap => row[21],
    :cy => row[22],
    :emp => row[23],
    :acc => row[24],
    :corp2_name => row[11],
    :corp2_namek => row[12],
    :corp2_posi => row[13],
    :corp2_rep => row[14],
    :corp2_repk => row[15],
    :rep2_bth => row[16],
    :corp2_add => row[17],
    :corp2_tel => row[18],
    :corp2_fax => row[19],
    :corp2_mail => row[20]
  )
end

CSV.foreach('db/grps.csv') do |row|
  Grp.create(
    :grp_no => row[0],
    :grp_name => row[1]
  )
end

CSV.foreach('db/tois.csv') do |row|
  Toi.create(
    :grp_no => row[0],
    :toi_no => row[1],
    :toi_name => row[2]
  )
end

