module Slugable
  extend ActiveSupport::Concern

  included do
    extend FriendlyId
    friendly_id :random_slug_id, use: :slugged
  end

  private

  def random_slug_id
    [*'a'..'z', *'0'..'9'].sample(8).join
  end
end