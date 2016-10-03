def for_words (integer)
  one_array = ['zero','one','two','three','four','five','six','seven','eight','nine']
  teen_array = ['','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
  ten_array = ['','ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']

  result =  ""

  #for billions
  writing = integer / 1_000_000_000
  remainder = integer % 1_000_000_000

  if writing > 0
    result << in_words(writing) << " billion "
    integer = remainder
  end

  #for millions
  writing = integer / 1_000_000
  remainder = integer % 1_000_000

  if writing > 0
    result << in_words(writing) << " million "
    integer = remainder
  end

  #for thousands 
  writing = integer / 1000
  remainder = integer % 1000

  if writing > 0
    result << in_words(writing) << " thousand "
    integer = remainder
  end

  #for hundreds
  writing = integer / 100
  remainder = integer % 100

  if writing > 0
    result << in_words(writing) << " hundred "
    integer = remainder
  end

  #for tens!!!
  writing = integer / 10
  remainder = integer % 10

  if writing > 0 
    if writing == 1 && remainder > 0
      result << teens_array[remainder]
      remainder = 0
    else
      result << tens_array[writing]
    end
  end

  writing = remainder

  #for ones!!!!
  if writing >= 0
    result << ones_array[writing]
  end

  result

end


p words(4) # => "four"
p words(15) # => "fifteen"
p words(101) # => "one hundred one" 
p words(9915) # => "nine thousand nine hundred fifteen"
p words(2014567896) # => 
