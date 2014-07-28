require './lib/number'
class Contact
  @@names = []
  @@contacts = {}
  def Contact.names
    @@names
  end

  def Contact.clear
    @@names = []
    @@contacts = {}
  end

  def Contact.all
    @@contacts
  end

  def initialize (name)
    @name = name
    @@names << @name
    @@contacts[name] = self
  end

  def name
    @name
  end

  def add_number(number)
    @number = number
  end

  def add_numbers(extra)
    @add_numbers = Number.new(extra)
  end

  def numbers
    @add_numbers.all
  end
  def number
    @number
  end

  def add_email(email)
    @email = email
  end

  def email
    @email
  end

  def add_mailing(address)
    @address = address
  end

  def mailing
    @address
  end
end
