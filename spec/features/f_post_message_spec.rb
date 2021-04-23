feature 'post message' do
  scenario 'user can post a message' do
    visit('/user_account')
    fill_in('Peep', :with => 'Hello')
    click_button('Submit')
  end
end
