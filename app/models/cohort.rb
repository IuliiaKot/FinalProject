require 'csv'
class Cohort < ApplicationRecord
  has_many :students, dependent: :destroy
  has_many :pitches, through: :students, dependent: :destroy
  has_one :setting, dependent: :destroy

  def self.import(file)
    Cohort.create(name: file.original_filename[0...-4])
    CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
      row[:password] = SecureRandom.hex(10)
      # row[:password] ='123456'
      Cohort.last.students.create!(row.to_hash)
      StudentAccountMailer.sample_email(Student.last, row[:password]).deliver_now
    end
    #
    # StudentAccountMailer.sample_email(Student.last).deliver_now

  end

end
