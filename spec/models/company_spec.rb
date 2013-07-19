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
  it "responds with its phone numbers after they're created" do
    phone_number = company.phone_numbers.build(number: "333-4444")
    expect(phone_number.number).to eq('333-4444')
  end
  it 'responds with its created phone numbers' do
    person.phone_numbers.build(number: '555-8888')
    expect(person.phone_numbers.map(&:number)).to eq(['555-8888'])
  end

  it 'responds with its created email addresses' do
    person.email_addresses.build(address: 'me@example.com')
    expect(person.email_addresses.map(&:address)).to eq(['me@example.com'])
  end
end
