class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :video_id
    	t.string :content
    	t.belongs_to :video

      t.timestamps
    end
  end
end
