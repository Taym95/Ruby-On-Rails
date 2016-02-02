json.array!(@counts) do |count|
  json.extract! count, :id, :action, :count
  json.url count_url(count, format: :json)
end
