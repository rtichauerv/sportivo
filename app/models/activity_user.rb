class ActivityUser < ApplicationRecord
  self.table_name = "activities_users"
  belongs_to :activity
  belongs_to :user
end