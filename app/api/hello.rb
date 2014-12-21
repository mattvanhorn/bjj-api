class ApiSkylightInstrumenter < Grape::Middleware::Base
  def initialize(app)
    @app = app
  end

  def call(env)
    Skylight.instrument do
      status, headers, response = @app.call(env)
    end
  end
end

class API::Hello < Grape::API
  helpers Skylight::Helpers

  use ApiSkylightInstrumenter

  desc "Hello World"
  get '/' do
    { hello: "world" }
  end
end
