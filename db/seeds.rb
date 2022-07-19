ActiveRecord::Base.transaction do
  common_last_name = "桂木"
  great_grand_parent = GreatGrandParent.create!(last_name: common_last_name, first_name: "大治郎", gender: 0)
  birth_number_array = [3, 3, 3, 3, 3]
  if birth_number_array.size != 5
    p "配列数不正 size=5にしてください"
    raise
  end
  if birth_number_array.inject(:*) > 4000
    puts "数が多すぎます total = #{birth_number_array.inject(:*)} > 4000}"
    raise
  end
  birth_number_array[0].times do |i|
    gender = ["male", "female"].sample
    grand_parent = great_grand_parent.grand_parents.create!(last_name: common_last_name, first_name: Gimei.send(gender).first.hiragana, gender: gender)
    next if i == birth_number_array[0] -1

    birth_number_array[1].times do |j|
      gender = ["male", "female"].sample
      parent = grand_parent.parents.create!(last_name: common_last_name, first_name: Gimei.send(gender).first.hiragana, gender: gender)
      next if j == birth_number_array[1] -1

      birth_number_array[2].times do |k|
        gender = ["male", "female"].sample
        child = parent.children.create!(last_name: common_last_name, first_name: Gimei.send(gender).first.hiragana, gender: gender)
        next if k == birth_number_array[2] -1

        birth_number_array[3].times do |l|
          gender = ["male", "female"].sample
          grand_child = child.grand_children.create!(last_name: common_last_name, first_name: Gimei.send(gender).first.hiragana, gender: gender)
          next if l == birth_number_array[3] -1

          birth_number_array[4].times do |m|
            great_grand_child = grand_child.great_grand_children.create!(last_name: common_last_name, first_name: Gimei.send(gender).first.hiragana, gender: gender)
            next if m == birth_number_array[4] -1
          end

        end
      end
    end
  end
end
