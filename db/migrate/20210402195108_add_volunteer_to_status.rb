class AddVolunteerToStatus < ActiveRecord::Migration[6.0]
  def change
    add_reference :statuses, :volunteer, foreign_key: true;
  end
end
