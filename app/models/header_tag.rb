class HeaderTag < ApplicationRecord
  belongs_to :page
end

# Child subclasses, defining these here because they have no content in them for now.
class H1 < HeaderTag
end

class H2 < HeaderTag
end

class H3 < HeaderTag
end
