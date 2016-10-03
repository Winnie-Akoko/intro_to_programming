def figures_in_words (integer)
  one_array = ['zero','one','two','three','four','five','six','seven','eight','nine']
  teen_array = ['','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
  ten_array = ['','ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']

  result =  ""

  #for billions
  numbers = integer / 1_000_000_000
  remainder = integer % 1_000_000_000

  if numbers > 0
    result << figures_in_words(numbers) << " billion "
    integer = remainder
  end

  #for millions
  numbers = integer / 1_000_000
  remainder = integer % 1_000_000

  if numbers > 0
    result << figures_in_words(numbers) << " million "
    integer = remainder
  end

  #for thousands 
  numbers = integer / 1000
  remainder = integer % 1000

  if numbers > 0
    result << figures_in_words(numbers) << " thousand "
    integer = remainder
  end

  #for hundreds
  numbers = integer / 100
  remainder = integer % 100

  if numbers > 0
    result << figures_in_words(numbers) << " hundred "
    integer = remainder
  end

  #for tens!!!
  numbers = integer / 10
  remainder = integer % 10

  if numbers > 0 
    if numbers == 1 && remainder > 0
      result << teen_array[remainder]
      remainder = 0
    else
      result << ten_array[numbers]
    end
  end

  numbers = remainder

  #for ones!!!!
  if numbers >= 0
    result << one_array[numbers]
  end

  result

end


p figures_in_words(4) # => "four"
p figures_in_words(15) # => "fifteen"
p figures_in_words(101) # => "one hundred one" 
p figures_in_words(9915) # => "nine thousand nine hundred fifteen"
p figures_in_words(2014567896) # => 
