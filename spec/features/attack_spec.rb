feature 'Attack' do
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'ATTACK'
    click_link 'OK'
    expect(page).not_to have_content 'Chris: 100 HP'
    expect(page).to have_content 'Chris: 90 HP'
  end
end
