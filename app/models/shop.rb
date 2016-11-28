class Shop < ActiveRecord::Base


  geocoded_by :address
  after_validation :geocode






  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |shop|
        csv << shop.attributes.values_at(*column_names)
      end
    end
  end


  validates :name, :presence => true
  validates :address, :presence => true
  validates :chain, :presence => true
end
