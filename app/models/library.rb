class Library < ApplicationRecord
  validates :name, :city, :country, :url, presence: true
  validates :name, uniqueness: true
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      library_hash = row.to_hash
      library = Library.where(id: library_hash["id"])

      if library.count == 1
        library.first.update!(library_hash)
      else
        Library.create!(library_hash)
      end
    end
  end
end
