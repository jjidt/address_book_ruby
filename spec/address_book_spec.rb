require 'contact'
require 'rspec'

describe 'Contact' do
  before do
    Contact.clear
  end
  it 'initializes with a name parameter' do
    test_contact = Contact.new('Ronald McDonald')
    test_contact.should be_an_instance_of Contact
  end

  it 'lets you add and access a phone number parameter' do
    test_contact = Contact.new('Ronald McDonald')
    test_contact.add_number('5031111111')
    test_contact.number.should eq '5031111111'
  end

  it 'lets you add and access an email address parameter' do
    test_contact = Contact.new('Ronald McDonald')
    test_contact.add_email('Ronald@McDonalds.com')
    test_contact.email.should eq 'Ronald@McDonalds.com'
  end

  it 'lets you add and access a mailing address parameter' do
    test_contact = Contact.new('Ronald McDonald')
    test_contact.add_mailing('101 McDonald Street')
    test_contact.mailing.should eq '101 McDonald Street'
  end

  describe '.names' do
    it 'is empty at first' do
      Contact.names.should eq []
    end
    it 'automatically puts new names into class name list' do

      test_contact = Contact.new('Ronald McDonald')
      test_contact2 = Contact.new('Golden Arches')
      Contact.names.should eq ['Ronald McDonald', 'Golden Arches']
    end
  end
end

