def create_plant(overrides = {})
  Plant.create!({
    :common_name => "Awesome Plant #{rand(100..999)}",
    :genus_species => "Awesome Genus Spec. #{rand(100..999)}"
  }.merge(overrides))
end
