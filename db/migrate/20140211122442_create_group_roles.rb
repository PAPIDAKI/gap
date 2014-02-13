class CreateGroupRoles < ActiveRecord::Migration
  def change
    create_table :group_roles do |t|
      t.string :title
      t.text :job_description
      t.string :reports_to
      t.string :supervisor_to

      t.timestamps
    end
  end
end
