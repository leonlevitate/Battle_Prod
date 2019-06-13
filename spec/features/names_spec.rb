feature 'Testing players' do
  scenario 'Players can fill in their names' do
    visit('/')

    fill_in :name1, with: 'Leon'
    fill_in :name2, with: 'Chris'
    click_button 'Submit Names'

    expect(page).to have_content 'Leon vs Chris'
  end
end
