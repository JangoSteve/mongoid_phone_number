module MongoTypes
  class PhoneNumber
    include Mongoid::Fields::Serializable

    def serialize(value)
      return nil if value.blank?
      begin
        value.gsub(/[^0-9]/,'')
      rescue
        value
      end
    end

    def deserialize(value)
      value.to_s.split(/([0-9]{3})([0-9]{3})([0-9]{4})$/).delete_if(&:blank?).join("-")
    end

    def cast_on_read?
      true
    end
  end
end
