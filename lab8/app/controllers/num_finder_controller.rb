# frozen_string_literal: true

# com
# com
class NumFinderController < ApplicationController
  def input; end

  def output
    @ent_num = params[:ch].to_i
    @bearb_num = @ent_num.to_s(2)
    @rev_bearb_num = @bearb_num.reverse
    @result = @rev_bearb_num.to_i(2)
  end
end
