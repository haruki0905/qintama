require 'csv'

# rake import:users
namespace :import do
  desc "Import colors from csv"

  task colors: :environment do
    path = File.join Rails.root, "tmp/wikipedia_color_names.csv"
    puts "path: #{path}"
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
          name: row["name"],
          code: row["code"],
      }
    end
    puts "start to create colors data"
    begin
      Color.create!(list)
      puts "completed!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "raised error : unKnown attribute "
    end
  end
end