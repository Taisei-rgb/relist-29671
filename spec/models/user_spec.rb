require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    it 'email,passwordとpassword_confirmationが存在すれば登録できること'do
      expect(@user).to be_valid  
    end

    it 'passwordが6文字以上であれば登録できること' do
      @user.password = "000000"
      @user.password_confirmation = "000000"
      expect(@user).to be_valid
    end

    it 'emailが空では登録できないこと' do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Eメールを入力してください")
    end

    it '重複したemailが存在する場合登録できないこと'do
      @user.save 
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include("Eメールはすでに存在します")  
    end

    it 'passwordが空では登録できないこと' do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワードを入力してください")
    end

    it 'passwordが5文字以下であれば登録できないこと' do
      @user.password = "00000"
      @user.password_confirmation = "00000"
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")  
    end

    it 'passwordが存在してもpassword_confirmationが空では登録できないこと' do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")  
    end
  end
end
