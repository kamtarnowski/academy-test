
feature 'Page contains index of the cities', :devise do

  scenario 'correct address of the page' do
    user = FactoryGirl.create(:user, email: 'other@gmail.com')
    signin(user.email, user.password)
    visit cities_path
    expect(current_path).to eq '/cities'
  end

  scenario 'table contains names of the cities' do
    user = FactoryGirl.create(:user, email: 'other@gmail.com')
    city = FactoryGirl.create(:city)
    signin(user.email, user.password)
    visit cities_path
    expect(page).to have_selector("table")
    expect(page).to have_content city.name || city.short_name
  end


end