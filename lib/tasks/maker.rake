namespace :make_my do

  desc 'add plants and recipes'
  task recipes: :environment do
    y = Plant.create(:common_name => 'Yarrow', :genus_species => 'Achillea millefolium')
    d = Plant.create(:common_name => 'Dandylion', :genus_species => 'Taraxacum officinale')
    l = Plant.create(:common_name => 'Lavender', :genus_species => 'Lavandula angustifolia')
    n = Plant.create(:common_name => 'Nettles', :genus_species => 'Urtica diotica')

    Recipe.create(
      :plant_id => y.id,
      :name => 'Yarrow Poultice',
      :part => 'flower and leaf',
      :purpose => :medicinal,
      :ingredients => 'none',
      :prep_time => '1 minute',
      :total_time => '1 minute',
      :directions => 'crush leaf and flower and apply',
    )

    Recipe.create(
      :plant_id => y.id,
      :name => 'Yarrow Tincture',
      :part => 'flower and leaf',
      :purpose => :medicinal,
      :ingredients => 'drinking alcohol (vodka or whiskey)',
      :prep_time => '5 minutes',
      :total_time => '1 month',
      :directions => 'Fill jar 1/3 with dried OR gently fill with fresh. Add alcohol to cover. Let sit for one month, turning to mix every day or so.',
    )

    Recipe.create(
      :plant_id => l.id,
      :name => 'Lavendar Simple Syrup',
      :part => 'flower',
      :purpose => :culinary,
      :ingredients => 'sugar',
      :prep_time => '2 minutes',
      :total_time => '7 minutes plus cooling time',
      :directions => 'In a saucepan, add 1 cup sugar, one cup water, and 1/4 cup dried lavendar. Simmer very low covered for 5 minutes and then turn off to cool. Decant into a bottle and use that day, or refrigerate.',
    )

    Recipe.create(
      :plant_id => l.id,
      :name => 'Lavendar Tea',
      :part => 'flower',
      :purpose => :culinary,
      :ingredients => 'none',
      :prep_time => '2 minutes',
      :total_time => '10 minutes',
      :directions => 'Bring water to a boil and pour over lavendar, about 1 tsp dried flower to 1 cup of water. Cover and wait about 10 minutes.',
    )

    Recipe.create(
      :plant_id => l.id,
      :name => 'Yarrow Tea',
      :part => 'flower and leaf',
      :purpose => :culinary,
      :ingredients => 'none',
      :prep_time => '2 minutes',
      :total_time => '10 minutes to overnight',
      :directions => 'Bring water to a boil and pour over yarrow, about 1 tsp dried flower to 1 cup of water. Cover and wait about 10 minutes, or for medicinal strength wait overnight.',
    )

    Recipe.create(
      :plant_id => l.id,
      :name => 'Nettles Tea',
      :part => 'leaf',
      :purpose => :culinary,
      :ingredients => 'none',
      :prep_time => '2 minutes',
      :total_time => '20 minutes to overnight',
      :directions => 'Bring water to a boil and pour over nettles, about 1 tsp dried flower to 1 cup of water. Cover and wait about 20 minutes, or for medicinal strength wait overnight.',
    )
  end
end
