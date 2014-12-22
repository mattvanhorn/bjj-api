class API::Hello < Grape::API
  helpers Skylight::Helpers

  use Skylight::Middleware

  desc "Hello World"
  get '/' do
    { hello: "world" }
  end
end
