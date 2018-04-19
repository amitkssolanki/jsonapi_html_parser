class HeaderTagResource < JSONAPI::Resource
  attributes :content, :type
end

class H1Resource < HeaderTagResource
  attributes :content
end
class H2Resource < HeaderTagResource
  attributes :content
end
class H3Resource < HeaderTagResource
  attributes :content
end