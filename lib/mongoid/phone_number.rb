require 'mongoid/conversions'

module Mongoid
  class PhoneNumber
    extend Mongoid::Extensions::PhoneNumber::Conversions
  end
end