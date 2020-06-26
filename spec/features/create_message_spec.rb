feature 'Create message' do
  given(:user) { create(:user) }

  scenario 'Authenticated user creates message' do
    sign_in user

    visit root_path
    fill_in 'Введите сообщение', with: 'MyMessage'
    click_on 'Отправить'

    expect(current_path).to eq root_path
    expect(page).to have_content 'MyMessage'
  end

  scenario 'Non-authenticated user try to create message' do
    visit root_path

    expect(page).to_not have_field 'Введите сообщение'
    expect(page).to have_link 'Войдите, чтобы оставить сообщение'
  end
end