class Checkin < ActiveRecord::Base
    def latitude
        (self.location ||= Point.new).y
      end

      def latitude=(value)
        (self.location ||= Point.new).y = value
      end

      def longitude
        (self.location ||= Point.new).x
      end

      def longitude=(value)
        (self.location ||= Point.new).x = value
      end
    end
end
