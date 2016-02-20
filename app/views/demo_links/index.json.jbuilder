json.array!(@demo_links) do |demo_link|
  json.extract! demo_link, :id, :url, :description
  json.url demo_link_url(demo_link, format: :json)
end
