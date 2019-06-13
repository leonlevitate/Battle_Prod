def sign_in_and_play
  visit('/')
  fill_in :name1, with: 'Leon'
  fill_in :name2, with: 'Chris'
  click_button 'Submit Names'
end
