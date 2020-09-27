require 'rails_helper'

RSpec.describe Note, type: :model do
  before do
    @note = FactoryBot.build(:note)
  end

  describe "ノートの保存" do
    context "ノートが保存される場合" do
      it "タイトルのみあればノートは保存される" do
        @note.content = ""
        expect(@note).to be_valid  
      end
      it "コンテントのみあればノートは保存される" do
        @note.title = ""
        expect(@note).to be_valid 
      end
    end

    context "ノートが保存されない場合" do
      it "ユーザーが紐付いていないとノートは保存できない" do
        @note.user = nil 
        @note.valid?
        expect(@note.errors.full_messages).to include("Userを入力してください")  
      end
    end
  end
end
