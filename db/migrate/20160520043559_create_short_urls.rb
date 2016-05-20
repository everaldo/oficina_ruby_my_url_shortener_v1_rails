class CreateShortUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :short_urls do |t|
      t.string :url
      t.string :code

      t.timestamps
    end
  end
end
