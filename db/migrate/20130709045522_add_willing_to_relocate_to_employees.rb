class AddWillingToRelocateToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :willing_to_relocate, :boolean, :default => false
  end
end
