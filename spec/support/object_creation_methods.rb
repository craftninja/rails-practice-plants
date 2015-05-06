def create_plant(overrides = {})
  Plant.create!({
    :common_name => "Awesome Plant #{rand(100..999)}",
    :genus_species => "Scientific Name #{rand(100..999)}",
  }.merge(overrides))
end

def create_property(overrides = {})
  Property.create!({
    :name => "property #{rand(100..999)}",
    :description => "does stuff #{rand(100.999)}",
  }.merge(overrides))
end
