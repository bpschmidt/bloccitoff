namespace :todo do
  desc "TODO"
  task delete_items: :environment do
    puts "Hello World"
    puts Item.where("created_at < ?", 7.days.ago).count
    puts Item.where("created_at < ?", 7.days.ago).delete_all
    puts Item.where("created_at < ?", 7.days.ago).count
  end

end
