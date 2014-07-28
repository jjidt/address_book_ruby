class Contact
  @@names = []
  def Contact.names
    @@names
  end
  def initialize (name)
    @name = name
  end
  def name
    @name
  end
  def add_number(number)
    @number = number
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
