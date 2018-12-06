class User < ApplicationRecord
  # Direct associations

  has_many   :obsessions_received,
             :class_name => "Obsession",
             :foreign_key => "victim_id",
             :dependent => :destroy

  has_many   :obsessions_sent,
             :class_name => "Obsession",
             :foreign_key => "stalker_id",
             :dependent => :destroy

  has_many   :likes,
             :foreign_key => "users_id",
             :dependent => :destroy

  has_many   :photos,
             :foreign_key => "users_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
