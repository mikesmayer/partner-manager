require 'spec_helper'

describe Company do
  let(:company) do
    Company.new(name: 'Mike & Sons, Inc.')
  end
  it 'is valid' do
    expect(Company.new).not_to be_valid
  end
  it 'is invalid without name' do
    company.name = nil
    expect(company).not_to be_valid
  end
end
