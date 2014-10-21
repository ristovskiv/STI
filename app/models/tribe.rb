class Tribe < ActiveRecord::Base
  has_many :animals

  delegate :lions, :wild_boars, to: :animals
end
