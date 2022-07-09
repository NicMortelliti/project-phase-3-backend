class CreateNoneUser < ActiveRecord::Migration[6.1]
  def change
    User.create(
      first_name: "none",
      last_name: "none",
      username: "--Unassigned--",
  )
  end
end
