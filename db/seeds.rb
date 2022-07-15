ActiveRecord::Base.transaction do
  common_last_name = "桂木"
  great_grand_parent = GreatGrandParent.create!(last_name: common_last_name, first_name: "大治郎", gender: 0)
  birth_number_array = [20, 15, 3, 2, 2]
  if birth_number_array.size != 5
    p "配列数不正 size=5にしてください"
    raise
  end
  if birth_number_array.inject(:*) > 4000
    puts "数が多すぎます total = #{birth_number_array.inject(:*)} > 4000}"
    raise
  end
  20.times do
    gender = ["male", "female"].sample
    grand_parent = great_grand_parent.grand_parents.create!(last_name: common_last_name, first_name: Gimei.send(gender).first.kanji, gender: gender)

    15.times do
      gender = ["male", "female"].sample
      parent = grand_parent.parents.create!(last_name: common_last_name, first_name: Gimei.send(gender).first.kanji, gender: gender)

      5.times do
        gender = ["male", "female"].sample
        child = parent.children.create!(last_name: common_last_name, first_name: Gimei.send(gender).first.kanji, gender: gender)

        2.times do
          gender = ["male", "female"].sample
          grand_child = child.grand_children.create!(last_name: common_last_name, first_name: Gimei.send(gender).first.kanji, gender: gender)

          2.times do
            great_grand_child = grand_child.great_grand_children.create!(last_name: common_last_name, first_name: Gimei.send(gender).first.kanji, gender: gender)
          end

        end
      end
    end
  end
end
