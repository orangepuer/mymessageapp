feature 'User sign in' do
  given(:user) { create(:user) }

  scenario 'Registered user try to sign in' do
    sign_in user

    expect(current_path).to eq root_path
    expect(page).to have_link user.email
    expect(page).to have_link 'Выйти'
  end

  scenario 'Non-registered user try to sign in' do
    visit new_user_session_path
    fill_in 'Email', with: 'wrong_user@test.com'
    fill_in 'Пароль', with: '123456'
    click_on 'Войти'

    expect(current_path).to eq new_user_session_path
    expect(page).to_not have_link user.email
    expect(page).to_not have_link 'Выйти'
  end
end