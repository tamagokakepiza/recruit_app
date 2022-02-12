require 'rails_helper'

RSpec.describe Corporate, type: :model do
  before do
    @corporate = FactoryBot.build(:corporate)
  end

  describe '企業情報保存' do
    context '情報が保存できる時' do
      it 'name,industryが存在すれば保存できる' do
        expect(@corporate).to be_valid
      end
      it 'capitalがなくても保存できる' do
        @corporate.capital = ''
        expect(@corporate).to be_valid
      end
      it 'earningsがなくても保存できる' do
        @corporate.earnings = ''
        expect(@corporate).to be_valid
      end
      it 'employeeがなくても保存できる' do
        @corporate.employee = ''
        expect(@corporate).to be_valid
      end
      it 'placeがなくても保存できる' do
        @corporate.place = ''
        expect(@corporate).to be_valid
      end
      it 'average_incomeがなくても保存できる' do
        @corporate.average_income = ''
        expect(@corporate).to be_valid
      end
      it 'average_ageがなくても保存できる' do
        @corporate.average_age = ''
        expect(@corporate).to be_valid
      end
      it 'business_contentがなくても保存できる' do
        @corporate.business_content = ''
        expect(@corporate).to be_valid
      end
      it 'human_resourceがなくても保存できる' do
        @corporate.human_resource = ''
        expect(@corporate).to be_valid
      end
      it 'strengthがなくても保存できる' do
        @corporate.strength = ''
        expect(@corporate).to be_valid
      end
      it 'weaknessがなくても保存できる' do
        @corporate.weakness = ''
        expect(@corporate).to be_valid
      end
      it 'selection_methodがなくても保存できる' do
        @corporate.selection_method = ''
        expect(@corporate).to be_valid
      end
      it 'othersがなくても保存できる' do
        @corporate.others = ''
        expect(@corporate).to be_valid
      end
    end
    context '情報が保存できない時' do
      it 'nameが空では保存できない' do
        @corporate.name = ''
        @corporate.valid?
        expect(@corporate.errors.full_messages).to include "Name can't be blank"
      end
      it 'industryが空では保存できない' do
        @corporate.industry = ''
        @corporate.valid?
        expect(@corporate.errors.full_messages).to include "Industry can't be blank"
      end
    end
  end
end
