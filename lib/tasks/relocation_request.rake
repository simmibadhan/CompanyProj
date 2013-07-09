require 'faker'

namespace :db do

  desc "Set willing_to_relocate field to true for any 10 employees"
  task :settrue => :environment do
    begin
      r = Random.new
      10.times do
        num = r.rand(1..100)
        emp = Employee.find(num)
        emp.willing_to_relocate = true
        emp.save
      end
      
    rescue StandardError => e
      puts e
    end
  end

end