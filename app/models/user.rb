class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :foods


  # photoをattachファイルとする。stylesで画像サイズを定義できる
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }

  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
