class User < ApplicationRecord
  attr_accessor :search_name, :search_age

  #eqはイコール、contは〜を含む
  def search
    User.ransack(name_cont: @search_name, age_eq: @search_age).result
  end

end
