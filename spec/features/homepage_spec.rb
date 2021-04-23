feature 'viewing chitter' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Chitterland"
  end
end
