require 'spec_helper'
require 'capybara/rails'
require 'capybara/rspec'

describe 'the company view', type: :feature do

  let(:company) { Company.create(name: 'Mayer & Co.') }

  describe 'phone number integrations' do
    before(:each) do
      company.phone_numbers.create(number: "555-1234")
      company.phone_numbers.create(number: "555-5678")
      visit company_path(company)
    end

    it 'shows the phone numbers' do
      company.phone_numbers.each do |phone|
        expect(page).to have_content(phone.number)
      end
    end

    it 'has a link to add another' do
      pending
      expect(page).to have_link('Add phone number', href: new_phone_number_path(contact_id: person.id, contact_type: 'Person'))
    end

    it 'adds a new phone number' do
      pending
      page.click_link('Add phone number')
      page.fill_in('Number', with: '555-8888')
      page.click_button('Create Phone number')
      expect(current_path).to eq(person_path(person))
      expect(page).to have_content('555-8888')
    end

    it 'has links to edit phone numbers' do
      pending
      person.phone_numbers.each do |phone|
        expect(page).to have_link('edit', href: edit_phone_number_path(phone))
      end
    end

    it 'edits a phone number' do
      pending
      phone = person.phone_numbers.first
      old_number = phone.number

      first(:link, 'edit').click
      page.fill_in('Number', with: '555-9191')
      page.click_button('Update Phone number')
      expect(current_path).to eq(person_path(person))
      expect(page).to have_content('555-9191')
      expect(page).to_not have_content(old_number)
    end

    it 'has links to delete phone numbers' do
      pending
      person.phone_numbers.each do |phone|
        expect(page).to have_link('delete', href: destroy_phone_number_path(phone))
      end
    end
  end

  describe 'email address integrations' do
    pending
    before(:each) do
      company.email_addresses.create(address: "email@email.com")
      company.email_addresses.create(address: "email@address.com")
      visit company_path(company)
    end
    it 'shows the email address' do
      pending
      expect(page).to have_selector('li', text: email.address)
    end
    it 'has a link to add email address' do
      pending
      expect(page).to have_link('Add email address', href: new_email_address_path(contact_id: person.id, contact_type: 'Person'))
    end
    it 'adds an email address' do
      pending
      page.click_link('Add email address')
      page.fill_in('Address', with: 'email@email.com')
      page.click_button('Create Email address')
      expect(current_path).to eq(person_path(person))
      expect(page).to have_content('email@email.com')
    end
  end

end