require 'spec_helper'

describe 'Employee' do
  let(:employee) { FactoryGirl.create(:employee) }

  context 'factory' do
    it 'is a Employee' do
      employee.should be_a Employee
    end
  end

  describe '#destroy' do
    let!(:employee_id) { employee.id }

    context 'after delete' do
      let!(:destroy) { employee.destroy }
      it 'has been removed' do
        Employee.find_by_id(employee).should be_nil
      end
    end
  end
end
