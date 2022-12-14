# frozen_string_literal: true

# com
class NumFinderController < ApplicationController
  def input; end

  def output
    @ent_num = params[:ch].to_i
    @bearb_num = @ent_num.to_s(2)
    @rev_bearb_num = @bearb_num.reverse
    @result = @rev_bearb_num.to_i(2)
    respond_to do |format|
      format.html
      format.json do
        render json: { type: @result.class.to_s, value: [@ent_num, @bearb_num, @rev_bearb_num, @result] }
      end
    end
  end
end
