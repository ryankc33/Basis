class AddAttachmentLogoToVendors < ActiveRecord::Migration
  def self.up
    change_table :vendors do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :vendors, :logo
  end
end
