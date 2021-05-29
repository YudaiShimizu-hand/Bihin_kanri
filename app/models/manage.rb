class Manage < ApplicationRecord
    def self.search(keyword)
        where(["name like? OR place like?", "%#{keyword}%", "%#{keyword}%"])
      end
end
