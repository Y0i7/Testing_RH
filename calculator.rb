class Calculator
  @@Result = @result

  def initialize (num1,num2,operator)
    @const = @@const
    @num1 = num1
    @num2 = num2
    @operator = operator
    @const = const
  end
  
  def addition(num1, num2)
    return (num1 + num2)
  end

  def subtraction(num1, num2)
    return (num1 - num2)
  end

  def multiplication(num1, num2)
    return (num1 * num2)
  end

  def division(num1, num2)
    return (num1 / num2)
  end


  def calculation(num1,num2,operator)
    
    if !['+','-','/','*'].include?(operator)
      puts 'Unavaliabable operator has been selected'
    else
      case operator
      when '+'
        puts 'sumar'
      when '-'
        puts 'restar'
      when '/'
        puts 'dividir'
      when '*'
        puts 'multiplicar'
    end
end

