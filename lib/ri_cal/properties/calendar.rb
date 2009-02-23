module RiCal
  module Properties
    # Properties::Calendar provides property accessing methods for the Calendar class
    # This source file is generated by the  rical:gen_propmodules rake tasks, DO NOT EDIT
    module Calendar

      # return the the CALSCALE property
      # which will be an instances of RiCal::TextValue
      # 
      # [purpose (from RFC 2445)]
      # This property defines the calendar scale used for the calendar information specified in the calendar object.
      # 
      # see RFC 2445 4.7.1 p 73
      def calscale_property
        @calscale_property ||= TextValue.convert("GREGORIAN")
      end

      # return the value of the CALSCALE property
      # which will be an instance of String
      def calscale
        calscale_property ? calscale_property.value : property
      end

      def calscale_property_from_string(line) # :nodoc:
        @calscale_property = TextValue.new(line)
      end


      # return the the METHOD property
      # which will be an instances of RiCal::TextValue
      # 
      # [purpose (from RFC 2445)]
      # This property defines the iCalendar object method associated with the calendar object
      # 
      # see RFC 2445 4.7.2 p 74-75
      def method_property
        @method_property
      end

      # set the METHOD property
      # property value should be an instance of RiCal::TextValue
      def method_property=(property_value)
        @method_property = property_value
      end

      # set the value of the METHOD property
      def icalendar_method=(ruby_value)
        self.method_property= TextValue.convert(ruby_value)
      end

      # return the value of the METHOD property
      # which will be an instance of String
      def icalendar_method
        method_property ? method_property.value : property
      end

      def method_property_from_string(line) # :nodoc:
        @method_property = TextValue.new(line)
      end


      # return the the PRODID property
      # which will be an instances of RiCal::TextValue
      # 
      # [purpose (from RFC 2445)]
      # This property specifies the identifier for the product that created the iCalendar object.
      # 
      # see RFC 2445 4.7.3 pp 75-76
      def prodid_property
        @prodid_property ||= TextValue.convert("-//com.denhaven2/NONSGML ri_cal gem//E")
      end

      # set the PRODID property
      # property value should be an instance of RiCal::TextValue
      def prodid_property=(property_value)
        @prodid_property = property_value
      end

      # set the value of the PRODID property
      def prodid=(ruby_value)
        self.prodid_property= TextValue.convert(ruby_value)
      end

      # return the value of the PRODID property
      # which will be an instance of String
      def prodid
        prodid_property ? prodid_property.value : property
      end

      def prodid_property_from_string(line) # :nodoc:
        @prodid_property = TextValue.new(line)
      end


      # return the the VERSION property
      # which will be an instances of RiCal::TextValue
      # 
      # [purpose (from RFC 2445)]
      # This property specifies the identifier corresponding to thehighest version number or the minimum and maximum range of the iCalendar specification that is required in order to interpret the iCalendar object.
      # 
      # see RFC 2445 4.7.4 pp 76-77
      def version_property
        @version_property ||= TextValue.convert("2.0")
      end

      # return the value of the VERSION property
      # which will be an instance of String
      def version
        version_property ? version_property.value : property
      end

      def version_property_from_string(line) # :nodoc:
        @version_property = TextValue.new(line)
      end


      module ClassMethods
        def property_parser
          {"METHOD"=>:method_property_from_string, "VERSION"=>:version_property_from_string, "PRODID"=>:prodid_property_from_string, "CALSCALE"=>:calscale_property_from_string}
        end
      end

      def self.included(mod)
        mod.extend ClassMethods
      end

      def mutual_exclusion_violation
        false
      end
    end
  end
end
