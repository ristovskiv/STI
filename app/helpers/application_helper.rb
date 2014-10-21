module ApplicationHelper
  def format_action(action)
    action ? "#{action}_" : ""
  end

  def format_sti(action, race, animal)
    action || animal ? "#{format_action(action)}#{race.underscore}" : "#{race.underscore.pluralize}"
  end

  def sti_animal_path(race = "animal", animal = nil, action = nil)
    send "#{format_sti(action, race, animal)}_path", animal
  end
end
