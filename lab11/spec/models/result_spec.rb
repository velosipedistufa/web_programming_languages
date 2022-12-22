require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe Result, type: :model do
  it "checks performance of the model" do
    res = Result.find_by(in: 6)
    res&.destroy
    result = [6,'110','011',3]
    local_res = Result.create in: 6, out: ActiveSupport::JSON.encode(result)
    local_res.save
    res = Result.find_by(in: 6)
    db_result = ActiveSupport::JSON.decode(res.out)
    expect(db_result).to eq(result)
  end
  context 'when in is unique' do
     res = Result.find_by(in: 6)
     res&.destroy
       before { res = Result.create!(in: 6, out: ActiveSupport::JSON.encode([6, '110', '011', 3])) }
     it {expect(res).to be_valid}
   end

  context 'validations' do
    res = Result.find_by(in: 6)
    res&.destroy
      before { Result.create!(in: 6, out: ActiveSupport::JSON.encode([6, '110', '011', 3])) }
    it do 
      should validate_uniqueness_of(:in)
    end
    end
  
  context 'non-negative' do
    res = Result.find_by(in: -6)
    res&.destroy
    it do
      expect { 
        Result.create!(in: -6, out: ActiveSupport::JSON.encode([6, '110', '011', 3]))
      }.to raise_error(
        ActiveRecord::RecordInvalid
      )
    end
    end
end
