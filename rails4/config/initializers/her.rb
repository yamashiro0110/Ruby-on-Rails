Her::API.setup url: "https://localhost:8080" do |c|
    # Request
    c.use Faraday::Request::UrlEncoded
  
    # Response
    c.use Her::Middleware::DefaultParseJSON
  
    # Adapter
    c.use Faraday::Adapter::NetHttp
end
