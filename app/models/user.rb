# Schema
# ------------------
# Table name: users
# ------------------
# id:           integer         not null, primary key
# name:         string          not null
# email:        string          not null
# password:     string          not null
# created_at:   date_time       not null
# updated_at:   date_time       not null
#

class User < ApplicationRecord
  validates :name, :email, :password, presence: true
end
