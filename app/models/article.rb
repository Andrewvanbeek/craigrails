class Article < ApplicationRecord
  belongs_to :category

  def key
    key = []
    8.times do
     key << ([*'a'..'z'] + [*'A'..'Z'] + [*0..9]).sample
    end
    key.join
  end

end
