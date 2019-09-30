def nyc_pigeon_organizer(data)
  # write your code here!
  new_data ={}
  data.each{|char, ind|
   ind.each{|adj, item_r|
   # puts "#{char}: #{adj} - #{item_r}"
    item_r.each{|ind_item|
   # puts "ind_item: #{ind_item}"
    if new_data[ind_item] == nil
      new_data[ind_item] = {char => [adj.to_s]}
    else 
        if new_data[ind_item][char] == nil
        new_data[ind_item][char] = [adj.to_s]
        else
        new_data[ind_item][char] << adj.to_s
        end 
    end
    }
   }
  }
  puts new_data
end