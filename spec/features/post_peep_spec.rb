feature 'posting a peep' do
    scenario 'A user can post a peep to chitter' do
        visit('/')
        
        fill_in('content', with: 'What a doozy')
        click_button('Post')

        expect(current_path).to eq "/peeps"
        expect(page).to have_content('What a doozy')
    end
end