class Tweet
  include Mongoid::Document
  field :text, type: Hash, default: Hash.new
end
