require 'csv'
class Cohort < ApplicationRecord
  has_many :students
  has_many :pitches, through: :students
  has_one :setting

  def self.import(file)
    debugger
    CSV.foreach(file.path, headers: true) do |row|
      debugger
      Student.create! row.to_hash
    end
  end

  # def self.open_spreadsheet(file)
  #   # debugger
  #   case File.extname(file.original_filename)
  #   when ".csv" then CSV.new(file.path)
  #   when ".xls" then Excel.new(file.path, nil, :ignore)
  #   when ".xlsx" then Excelx.new(file.path, nil, :ignore)
  #   else raise "Unknown file type: #{file.original_filename}"
  #   end
  # end
end
