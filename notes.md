Models

User (member)
  has_many :events
  has_many :groups, through: :events

  has_secure_password

  t.string :username
  t.string :email
  t.string :password_digest

Group
  has_many :events
  has_many :users, through :events  

  t.string :name
  t.text :contact_info
  t.text :mission

Event
  belongs_to :user
  belongs_to :group

  t.integer :user_id (taken care of by resource generator)
  t.integer :group_id (taken care of by resource generator)
  t.string :name
  t.string :date
  t.string :time
  t.text :location
  t.text :description
  t.boolean :attending (set default to false)
