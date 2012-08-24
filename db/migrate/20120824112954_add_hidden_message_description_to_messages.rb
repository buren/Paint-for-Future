class AddHiddenMessageDescriptionToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :hidden_message_description, :string
  end
end
