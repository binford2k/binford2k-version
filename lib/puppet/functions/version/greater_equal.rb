# frozen_string_literal: true
# Returns true if the left-hand argument is greater than the right, or if the two versions passed are equal.
# Versions can be passed as either strings (like `"1.0.0"`) or numbers (like `1` or `1.0`).
Puppet::Functions.create_function(:"version::greater_equal") do
  dispatch :greater_equal do
    param 'Any', :a
    param 'Any', :b
    return_type 'Boolean'
  end

  def greater_equal(x, y)
    raise Puppet::Error('Must pass a number or a string') unless [Integer, Float, String].include? x.class
    raise Puppet::Error('Must pass a number or a string') unless [Integer, Float, String].include? y.class
    Puppet::Util::Package.versioncmp(x.to_s, y.to_s) > -1
  end

end
