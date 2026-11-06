namespace :numbers do
  desc "Multiple of"

  task :pass =>  :environment do
   (1...100).each do |num|
      if num%3 == 0 && num%5 == 0
        p "FizzBuzz"
        elsif num%3 == 0
          p "Fizz"
        elsif num%5 == 0
          p "Buzz"
        end
      
      end
    end  
   
end