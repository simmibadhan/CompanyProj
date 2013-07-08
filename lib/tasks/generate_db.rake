require 'faker'

namespace :db do

    desc "Create user records in the development database."
    task :populate => :environment do
    begin
      5.times do
        City.create!(
          :name => Faker::Address.city
        )
      end
      c_count = City.count

      100.times do |c|

        r = Random.new
        Employee.create!(
          :name => Faker::Name.name,
          :city_id => r.rand(1..5),
          :manager_id => r.rand(1..10)
        )

        end

  rescue StandardError => e
    puts e
  end
end

end