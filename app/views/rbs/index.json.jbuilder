json.array!(@rbs) do |rb|
  json.extract! rb, :id, :rb_no, :rb_name, :toi_no
  json.url rb_url(rb, format: :json)
end
