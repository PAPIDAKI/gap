class RenameCodeFytaToCropIdInDroncrops < ActiveRecord::Migration
  def change
  	rename_column :droncrops,:code_fyta,:crop_id
  end
end
