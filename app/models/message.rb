class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
    # 画像があればtrue、なければfalseを返す仕組み
    
    # validatesのunlessオプションにメソッド名を指定することで
    # 「メソッドの返り値がfalseならばバリデーションによる検証を行う」という条件を作っています
  end

end
