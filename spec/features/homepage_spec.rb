require 'pg'

feature 'viewing chitter' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Chitter land"
  end
end

feature 'viewing peeps' do
  scenario 'A user can see all peeps' do
    connection = PG.connect(dbname: 'chitter_test')

    connection.exec("INSERT INTO peeps (content) VALUES('Peeps ahoy!');")
    connection.exec("INSERT INTO peeps (content) VALUES('What a doozy');")

    visit('/peeps')
    expect(page).to have_content('Peeps ahoy!')
    expect(page).to have_content('What a doozy')
    expect(page).to have_content('Dis peep, dat peep')
  end
end
