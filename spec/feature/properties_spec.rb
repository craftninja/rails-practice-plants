require 'rails_helper'

feature 'Properties' do
  scenario 'User can CRUD properties' do
    # pending 'This spec goes with Nesting and Active Record Associations (many to many, README #4)'
    visit '/'
    within '.navbar' do
      click_on 'Properties'
    end
    expect(page).to have_content('Properties')
    click_on 'New Property'
    fill_in 'Name', with: 'styptic'
    fill_in 'Description', with: 'stop bleeding'
    click_on 'Create'
    expect(current_path).to eq(properties_path)
    expect(page).to have_content('styptic')
    expect(page).to have_content('stop bleeding')
    click_on 'styptic'
    expect(page).to have_content('styptic')
    expect(page).to have_content('stop bleeding')
    click_on 'Edit'
    fill_in 'Description', with: 'inhibits, slows, or stops bleeding'
    click_on 'Update'
    expect(current_path).to eq(properties_path)
    expect(page).to_not have_content('stop bleeding')
    expect(page).to have_content('inhibits, slows, or stops bleeding')
    click_on 'styptic'
    click_on 'Delete'
    expect(page).to_not have_content('styptic')
    expect(page).to_not have_content('inhibits, slows, or stops bleeding')
  end

  scenario 'User can add properties to plants (through characteristics)' do
    # pending 'This spec goes with Nesting and Active Record Associations (many to many, README #4)'
    plant = create_plant(
      :common_name => 'Yarrow',
      :genus_species => 'Achillea millefolium'
    )
    property = create_property(
      :name => 'styptic',
      :description => 'inhibits, slows, or stops bleeding'
    )
    visit plant_path(plant)
    click_on 'View Characteristics'
    expect(current_path).to eq(plant_characteristics_path(plant))
    click_on 'Add characteristic'
    select 'styptic', from: :characteristic_property_id
    fill_in 'Part', with: 'leaf and flower'
    fill_in 'Preparation', with: 'Fresh poultice.'
    click_on 'Create'
    expect(current_path).to eq(plant_characteristics_path(plant))
    expect(page).to have_content('styptic')
    expect(page).to have_content('leaf and flower')
    expect(page).to have_content('Fresh poultice.')
    click_on 'Edit'
    fill_in 'Preparation', with: 'Fresh poultice is best externally. Tincture, tea, overnight infusion for internal issues.'
    click_on 'Update'
    expect(current_path).to eq(plant_characteristics_path(plant))
    expect(page).to_not have_content('Fresh poultice.')
    expect(page).to have_content('Fresh poultice is best externally. Tincture, tea, overnight infusion for internal issues.')
    visit plant_path(plant)
    click_on 'styptic'
    expect(current_path).to eq(property_path(property))
    expect(page).to have_content(plant.common_name)
    expect(page).to have_content(plant.genus_species)
    click_on plant.common_name
    click_on 'Delete'
    expect(page).to_not have_content('styptic')
  end
end
