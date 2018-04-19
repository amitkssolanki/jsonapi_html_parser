class PageResource < JSONAPI::Resource
  attributes :url, :title
  has_many :header_tags
  has_many :links
end