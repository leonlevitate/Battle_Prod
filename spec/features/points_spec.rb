feature 'View hit points' do
  scenario 'view Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Chris: 100HP'
  end
end
