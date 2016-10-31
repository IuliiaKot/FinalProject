require 'csv'
class Cohort < ApplicationRecord
  has_many :students
  has_many :pitches, through: :students
  has_one :setting

  def self.import(file)
    Cohort.create(name: file.original_filename)
    CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
      row[:password] = SecureRandom.hex(10)
      Cohort.last.students.create!(row.to_hash)
      StudentAccountMailer.sample_email(Student.last, row[:password]).deliver_now
    end
    # debugger
    # StudentAccountMailer.sample_email(Student.last).deliver_now

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
