class Product < ActiveRecord::Base
  include ActionView::Helpers::TextHelper

  attr_accessible :name
  has_many :categories


  def self.description
    "The product has #{helpers.pluralize(Category.count, 'category')}."
  end

  def self.helpers
    ActionController::Base.helpers
  end

end
