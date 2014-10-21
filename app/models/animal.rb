class Animal < ActiveRecord::Base
  belongs_to :tribe
  self.inheritance_column = :race

  scope :lions, -> { where(race: "Lion")}
  scope :wild_boars, -> { where(race:"WildBoar")}

  def self.races
    ["Lion","WildBoar"]
  end
end

