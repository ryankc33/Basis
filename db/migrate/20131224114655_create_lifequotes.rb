class CreateLifequotes < ActiveRecord::Migration
  def change
    create_table :lifequotes do |t|
      t.decimal :cover_amount
      t.string :cover
      t.string :cover_type
      t.string :cover_duration
      t.boolean :joint_cover
      t.boolean :monthly_payment
      t.string :applicant_title
      t.string :applicant_firstname
      t.string :applicant_lastname
      t.string :email
      t.date :applicant_date_of_birth
      t.text :applicant_phone
      t.boolean :smoking
      t.string :joint_applicant_title
      t.string :joint_applicant_firstname
      t.string :joint_applicant_lastname
      t.date :joint_applicant_date_of_birth
      t.boolean :joint_applicant_smoking

      t.timestamps
    end
  end
end
