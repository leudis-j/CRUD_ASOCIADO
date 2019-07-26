class AddCompanyToAreas < ActiveRecord::Migration[5.1]
  def change
    add_reference :areas, :company, foreign_key: true
  end
end
