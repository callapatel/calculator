

def calculate(f, a, b)
  if f[0..2].downcase == "add" or f == "+"#getting complex. to include CAP and lowercase letters. this looks at the first 3 letters to see if it comes with the word add.
    add(a, b)
  elsif f == "subtraction" or f == "-"#you can have as many elsif's as you want. but you'll end with an else.
    subtract(a, b)
  elsif f == "division" or f == "/"
    division(a, b)
  elsif f == "multiplication" or f == "*"
    multiplication(a,b)
  elsif f == "square" or f == "**"
    square(a,b)
  else
    abort(puts "bye!")
  end
end

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def division(num1, num2)
  (num1 / num2)
end

def multiplication(num1, num2)
  (num1 * num2)
end

def square(num1, num2)
  (num1**num2)
end

def squareroot(num1)
  Math.sqrt(num1)
end

def sqrertask(input)
  if input == "squareroot"
    puts "what is the first number? "
    raw = gets.chomp
    num1 = raw.to_i
      if num1 == 0 and raw != "0"
        abort("thats a string")
      else
        puts " #{num1} '^1/2' = #{squareroot(num1)}"
      abort
      end
  end
end

def floatsandnumbers(werealmostthere, answer)
  if werealmostthere =="float"
    puts answer.to_f
  elsif werealmostthere == 'number'
    puts answer.to_i
  else puts "try again"
  end
end

def nors(num1, raw)
  if num1 == 0 and raw != "0"
    abort("thats a string. shut down.")
  end
end

def continueornot(goon, arewedoingthis, answer)
  if goon == "yes" or goon == "y"
    answer = []
    #*need previous answer  to add to newest answer
    arewedoingthis == true
  elsif goon == "no" or goon == "n"
      arewedoingthis == false
      abort("bye!")
  else puts "try again"
  end
end

math_sign_h = {"addition" => "+", "add" => "+", "substract" => "-", "division" => "÷", "multiplication" => "x", "square" => "**", "+" => "+", "-" => "-", "/" => "÷", "*"=> "*", "**" => "**"}


puts "Hello there!"

arewedoingthis = true
while arewedoingthis == true

  puts "what kind of math would you like to do?: "
  input = gets.chomp
  sign = math_sign_h[input]

  puts "what is the first number? "
  raw = gets.chomp
  num1 = raw.to_i
  nors(num1, raw)

  puts "What is the second number? "
  raw = gets.chomp
  num2 = raw.to_i
  nors(num2, raw)

  answer = calculate(input, num1, num2)
  puts "soo.. '#{num1}' '#{sign}' '#{num2}' = #{answer} That's a big number"

  puts "Do you want a float or a number? "
  werealmostthere = gets.chomp
  floatsandnumbers(werealmostthere, answer)

  puts "would you like to continue on with this math?: "
  goon = gets.chomp
  continueornot(goon, true, answer)
end
