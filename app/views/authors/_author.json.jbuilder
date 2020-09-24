# json.extract! author, :id, :name, :created_at, :updated_at
# json.url author_url(author, format: :json)

# Modify for the json format of author
json.extract! author, 'id', 'name'
json.url author_url(author['id'], format: :json)
