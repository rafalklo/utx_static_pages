class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|      
      t.string :name
      t.string :permalink
      t.text   :content
      t.string :locale
      
      t.string :meta_keywords
      t.string :meta_description

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
