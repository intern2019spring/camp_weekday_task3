class CalcsController < ApplicationController

  def show
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @cal = params[:cal].to_s

    if
      @cal == "addition"
      @result = @num1 + @num2
    elsif
      @cal== "subtraction"
      @result = @num1 - @num2
    elsif
      @cal == "multiplication"
      @result = @num1 * @num2
    elsif
      @cal == "division"
      @result = @num1 / @num2
    else
      @result = "数値が正しくありません"
    end
  end

end
