json.extract! lesson, :id, :chapter, :content, :course_id, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
