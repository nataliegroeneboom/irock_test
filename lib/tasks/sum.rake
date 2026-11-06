namespace :sum do
  desc "Sum the number digits"

  task :sum_the_integer, [:num] =>  :environment do |task, args|
   p  args[:num].split("").map(&:to_i).reduce{|sum,num| sum+num}
  end
  
end