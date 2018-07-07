json.extract! paper, :id, :title, :resume, :general_purpose, :specific_purpose, :problem_definition, :keywords, :created_at, :updated_at
json.url paper_url(paper, format: :json)
