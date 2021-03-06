require 'json'

class Record
  attr_reader :first_name, :last_name, :gender, :favorite_color, :birthday

  def initialize(args)
    @first_name = args.fetch(:first_name)
    @last_name = args.fetch(:last_name)
    @gender = args.fetch(:gender)
    @birthday = Date.parse(args.fetch(:birthday))
    @favorite_color = args.fetch(:favorite_color)
  end

  def to_hash
    {first_name: @first_name,
     last_name: @last_name,
     gender: @gender,
     birthday: @birthday.to_s,
     favorite_color: @favorite_color}
  end

end
