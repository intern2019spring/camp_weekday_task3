module CalcsHelper
  def total
    case @oprator
    when "addition"
      @total = @price1 + @price2
    when "subtraction"
      @total = @price1 - @price2
    when "multiplication"
      @total = @price1 * @price2
    when "division"
      @total = @price1 / @price2
    end
  end
end
