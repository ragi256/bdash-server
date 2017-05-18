create_table 'user_auth_providers', force: :cascade do |t|
  t.integer  'user_id',    null: false
  t.string   'provider',   null: false
  t.string   'uid',        null: false
  t.datetime 'updated_at', null: false
  t.datetime 'created_at', null: false
end
