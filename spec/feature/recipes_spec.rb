require 'rails_helper'

feature 'Recipes' do
  scenario 'User can CRUD plant recipes' do
    pending 'This spec goes with Nesting and Active Record Associations (README #3)'
    plant = create_plant(
      :common_name   => 'Dandylion',
      :genus_species => 'Taraxacum officianale',
    )
    visit plant_path(plant)
    click_on 'Create Recipe'
    fill_in 'Recipe Name', with: 'Fried Dandylion Flowers'
    fill_in 'Part', with: 'Flowers'
    select 'Culinary', from: :recipe_purpose # Select box should contain 'Culinary', 'Medicinal', 'Utilitarian'
    fill_in 'Ingredients', with: 'flour, salt, and pepper'
    fill_in 'Prep Time', with: '20 minutes'
    fill_in 'Total Time', with: '25 minutes'
    fill_in 'Directions', with: 'Your flowers should be collected with no stem.'
    click_on 'That is how you make it'
    expect(current_path).to eq(plant_path(plant))
    expect(page).to have_content('Fried Dandylion Flowers')
    expect(page).to have_content('Flowers')
    expect(page).to have_content('culinary')
    click_on 'Fried Dandylion Flowers'
    expect(page).to have_content('Fried Dandylion Flowers')
    expect(page).to have_content('Flowers')
    expect(page).to have_content('Culinary')
    expect(page).to have_content('flour, salt, and pepper')
    expect(page).to have_content('20 minutes')
    expect(page).to have_content('25 minutes')
    expect(page).to have_content('Your flowers should be collected with no stem.')
    click_on 'Edit'
    fill_in 'Directions', with: 'Your flowers should be collected with no stem. Measure the amount of flowers and quarter that amount. Pour that volume of flour into a large bowl, and salt and pepper to taste (mild flavor). Rinse your flowers and drain. Heat up a wide shallow pan of oil (just generously coat the bottom of the pan) at a medium high heat. Gently mix your drained flowers in batches in your flour, salt and pepper mix. Place the flowers in the pan and fry on the backside, and then the front until the flour is slightly golden. Drain on paper towels and serve immediately.\n\nAlternatively, use flour, sugar and cinnamon for a sweet version.'
    click_on 'Update this recipe'
    expect(current_path).to eq(plant_recipe_path(plant, Recipe.find_by(:name => 'Fried Dandylion Flowers')))
    expect(page).to have_content('Alternatively, use flour, sugar and cinnamon for a sweet version.')
    click_on 'Delete'
    expect(current_path).to eq(plant_path(plant))
    expect(page).to_not have_content('Fried Dandylion Flowers')
  end
end
