class SchoolClass < ApplicationRecord
    def to_s
        self.title + " in " + self.room_number.to_s
      end
end
