module Common
  extend ActiveSupport::Concern
  
  def calculation
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    @cal = params[:cal]

    @result = if @cal == "addition"
      num1 + num2
    elsif @cal == "subtraction"
      num1 - num2
    elsif @cal == "multiplication"
      num1 * num2
    elsif @cal == "division"
      begin
      "#{num1 / num2}".."#{num1 % num2}"
      rescue ZeroDivisionError
      "divided by 0"
      end
    else
      "URLが正しくありません"
    end
  end
end