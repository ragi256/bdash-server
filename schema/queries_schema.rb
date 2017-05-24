create_table 'queries', force: :cascade do |t|
  t.integer  'user_id',                 null: false
  t.string   'title',      default: '', null: false
  t.text     'body',       default: '', null: false
  t.text     'charts',     default: [], null: false, array: true
  t.text     'result',     default: '', null: false
  t.datetime 'updated_at',              null: false
  t.datetime 'created_at',              null: false
end
