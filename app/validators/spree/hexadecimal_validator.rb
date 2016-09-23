class Spree::HexadecimalValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    unless value =~ /^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$/i
      object.errors[attribute] << (options[:message] || "must be a valid hexadecimal format")
    end
  end
end