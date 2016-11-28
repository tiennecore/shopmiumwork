require 'csv'

desc "Import shops from csv file"
task :import => [:environment] do

  file = "db/shops_shopmium.csv"

  CSV.foreach(file, :headers => true) do |row|
    Shop.create({

      :chain => row[0],
      :name => row[1],
      :latitude => row[2],
      :longitude => row[3],
      :address => row[4],
      :city => row[5],
      :zip => row[6],
      :phone => row[8],
      :country_code => row[18]
    })
  end

end
