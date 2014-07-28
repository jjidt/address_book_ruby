require 'contact'
require 'rspec'

describe 'Contact' do
  it 'initializes with a name parameter' do
    test_contact = Contact.new('Ronald McDonald')
    test_contact.should be_an_instance_of Contact
  end

  it 'lets you add and access a phone number parameter' do
    test_contact = Contact.new('Ronald McDonald')
    test_contact.add_number('5031111111')
    test_contact.number.should eq '5031111111'
  end

  it 'lets you add and access an email address' do
    test_contact = Contact.new('Ronald McDonald')
    test_contact.add_email('Ronald@McDonalds.com')
    test_contact.email.should eq 'Ronald@McDonalds.com'
  end
end
