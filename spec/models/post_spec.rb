require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'creation' do
    before do
      user = User.create(email: 'test@test.com', password: '123456', password_confirmation: '123456', first_name: 'Jon', last_name: 'Snow')
      @post = Post.create(date: Date.today, rational: 'anything', user_id: user.id)
    end

    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'cannot be created wihout a date and rational' do
      @post.date = nil
      @post.rational = nil
      expect(@post).to_not be_valid
    end
  end
end
