class UsersController < ApplicationController
  def index
    @users = [
      User.new(
      id: 1,
      name: 'Light',
      username: 'light',
      avatar_url: 'https://99px.ru/sstorage/1/2022/01/image_13101221852284073844.gif'
      ),
      User.new(
      id: 2,
      name: 'Dark',
      username: 'dark'
      )
    ]
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
      name: 'Light',
      username: 'light',
      avatar_url: 'https://99px.ru/sstorage/1/2022/01/image_13101221852284073844.gif'
      )

    @questions = [
      Question.new(text: 'Как дела?', created_at: Date.parse('22.02.2022')),
      Question.new(text: 'В чем смысл жизни?', created_at: Date.parse('22.02.2022'))
    ]

    @new_question = Question.new
  end
end
