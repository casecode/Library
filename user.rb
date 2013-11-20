class User
  def change_address(first_name, last_name, street_address)
    @full_name = first_name.upcase + ' ' + last_name.upcase

    @street_address = street_address
  end
end