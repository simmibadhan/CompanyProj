class AddAttachmentPhotoToEmployees < ActiveRecord::Migration
  def self.up
    change_table :employees do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :employees, :photo
  end
end
