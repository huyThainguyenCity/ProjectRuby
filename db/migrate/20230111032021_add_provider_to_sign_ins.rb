class AddProviderToSignIns < ActiveRecord::Migration[7.0]
  def change
    add_column :sign_ins, :provider, :string
    add_column :sign_ins, :uid, :string
  end
end
