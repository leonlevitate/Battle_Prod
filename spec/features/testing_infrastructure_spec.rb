feature 'Testing insfrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing insfrastructure working!'
  end
end
