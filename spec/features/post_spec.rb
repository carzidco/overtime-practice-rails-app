require 'rails_helper'

describe 'navigate' do
  before do
    @user = User.create(email: 'jsnow3@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf', first_name: 'Jon', last_name: 'Snow')
    login_as(@user)
  end

  describe 'index' do
    before do
      visit posts_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Posts' do
      expect(page).to have_content(/Posts/)
    end

    it 'has a list of posts' do
      post1 = Post.create(date: Date.today, rational: 'Post1', user_id: @user.id)
      post2 = Post.create(date: Date.today, rational: 'Post2', user_id: @user.id)
      visit posts_path
      expect(page).to have_content(/Post1|Post2/)
    end
  end

  describe 'creation' do
    before do
      visit new_post_path
    end
    it 'has a new form can be reached' do
      expect(page.status_code).to eq(200)
    end

    it 'can be created from new form page' do
      fill_in 'post[date]', with: Date.today
      fill_in 'post[rational]', with: 'Some rationale'
      click_on 'Save'

      expect(page).to have_content("Some rationale")
    end

    it 'will have a user associated it' do
      fill_in 'post[date]', with: Date.today
      fill_in 'post[rational]', with: 'User Association'
      click_on 'Save'

      expect(User.last.posts.last.rational).to eq('User Association')
    end
  end
end
