class CreateTagAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_assignments do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :gossip, index: true

      t.timestamps
    end
  end
end
