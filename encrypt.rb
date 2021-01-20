def encrypt(message)
  # 1. Create an array that contains all the letters of the alphabet
  alphabet = ("a".."z").to_a

  # 2. Create an array containing all the letters from the message
  letters = message.split("")

  # 3. Iterate over the array with message letters and shift
  # each by 3 space to the left unless it's a punctuation
  encoded = letters.map do |letter|
    initial_index = alphabet.index(letter.downcase)
    if letter == " "
      letter
    else
      shifted_index = initial_index - 3
      updated_letter = alphabet[shifted_index]
    end
  end
    p encoded.join.upcase
  # 4. Join the shifted letters into one string
end
