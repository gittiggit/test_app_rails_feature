json.array!(@test_jqueries) do |test_jquery|
  json.extract! test_jquery, :id, :name, :body, :salary, :date
  json.url test_jquery_url(test_jquery, format: :json)
end
