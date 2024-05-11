def caesar_cipher(string, shift_factor)
  characters_array = string.split('')

  modified_characters = characters_array.map do |character|
    if character in ('a'..'z')
      new_ordinal = character.ord + shift_factor

      new_ordinal -= 26 if new_ordinal > 122
      new_ordinal += 26 if new_ordinal < 97

      new_ordinal.chr

    elsif character in ('A'..'Z')
      new_ordinal = character.ord + shift_factor

      new_ordinal -= 26 if new_ordinal > 90
      new_ordinal += 26 if new_ordinal < 65

      new_ordinal.chr

    else
      character
    end
  end

  modified_characters.join('')
end

puts caesar_cipher('What a string!', 5) # Bmfy f xywnsl!
puts caesar_cipher('What a string!', -5) # Rcvo v nomdib!
