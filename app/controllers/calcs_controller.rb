class CalcsController < ApplicationController
  def show
    @price1 = params[:price1].to_i
    @price2 = params[:price2].to_i
    @oprator = params[:oprator]
    
    def total
    case @oprator
    when "addition"
      @total = @price1 + @price2
    when "subtraction"
      @total = @price1 - @price2
    when "multiplication"
      @total = @price1 * @price2
    when "division"
      @total = @price1 / @price2s
    end
  end
end
