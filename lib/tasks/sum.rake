namespace :sum do
  desc "Sum the number digits"

  task :sum_the_integer, [:num] =>  :environment do |task, args|
    sum_of_num = args[:num]
     while sum_of_num.length > 1
       sum = sum_of_num.split("").map(&:to_i).reduce{|sum,num| sum+num}
       sum_of_num = sum.to_s
     end
    p sum_of_num
  end
  
end