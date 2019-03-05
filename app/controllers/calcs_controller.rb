class CalcsController < ApplicationController
  include CalcsHelper
  def show
    @price1 = params[:price1].to_i
    @price2 = params[:price2].to_i
    @oprator = params[:oprator]
    total
  end
end
