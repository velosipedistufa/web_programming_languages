# frozen_string_literal: true

# class TranslateControlle
class TranslateController < ApplicationController
  def input; end

  def output
    @result_table = calculate(params[:ch])
  end

  def calculate(in_x)
    [in_x.to_i, in_x.to_i.to_s(2), in_x.to_i.to_s(2).reverse, in_x.to_i.to_s(2).reverse.to_i(2)]
  end
end
