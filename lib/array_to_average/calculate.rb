module ArrayToAverage
  class Calculate
    def initialize numbers
      @numbers = numbers.kind_of?(Array) ? numbers : []
      @sum = @numbers.inject { |sum,number| sum ? sum + number.to_f : number.to_f } || 0
      @size = @numbers.empty? ? 1 : @numbers.size
    end

    def calculate
      @sum / @size
    end
  end
end
