create_table 'users', force: :cascade do |t|
  t.string   'name',         null: false
  t.string   'access_token', null: false, limit: 40
  t.datetime 'updated_at',   null: false
  t.datetime 'created_at',   null: false
end
