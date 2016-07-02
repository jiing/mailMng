class ChangeReceivedTimeInLetters < ActiveRecord::Migration
  def change
     reversible do |dir|
      change_table :letters do |t|
        dir.up   { t.change :received_time, :datetime }
        dir.down { t.change :received_time, :time }
      end
    end 
  end
end
