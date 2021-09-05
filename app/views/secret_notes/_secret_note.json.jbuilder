json.extract! secret_note, :id, :title, :note, :created_at, :updated_at
json.url secret_note_url(secret_note, format: :json)
