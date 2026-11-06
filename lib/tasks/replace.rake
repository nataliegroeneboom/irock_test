namespace :replace do
  desc "Replace number with text"

  task :the_string_with_numbers, [:string] =>  :environment do |task, args|
    p args[:string].gsub(/\d+/, "NUMBER")
  end

  
end