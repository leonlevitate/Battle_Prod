feature 'Attack' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_link 'ATTACK'
    expect(page).to have_content 'Leon attacked Chris'
  end
end
