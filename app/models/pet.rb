class Pet < ActiveRecord::Base
    belongs_to :user
    
    validates :name, presence: true
    validates :breed, presence: true
    validates :age, presence: true, numericality: { only_integer: true }
    validates :img_url, presence: true
  end
  