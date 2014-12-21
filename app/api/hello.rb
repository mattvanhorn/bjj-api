class API::Hello < Grape::API
  desc "Hello World"
  get '/' do
    'hello world!!'
  end
end
