class Talker < ApplicationRecord
 has_many :comment
validates :name, presence: {comment:'は、必須項目です。'}
validates :name, uniqueness:  {comment:'重複しています他の文字列をご使用ください。'}
end