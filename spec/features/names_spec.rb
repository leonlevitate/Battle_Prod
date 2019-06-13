feature 'Testing players' do
  scenario 'Players can fill in their names' do
    sign_in_and_play
    expect(page).to have_content 'Leon vs Chris'
  end
end
