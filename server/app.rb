require_relative 'config/boot'
require_relative 'model/deep_thought'

class App < Sinatra::Base
  register Sinatra::Contrib

  get '/' do
    print "Hello world"
    headers 'Access-Control-Allow-Origin' => '*'
    question = params[:q] || "?"
    dt = DeepThought.new
    dt.ask(question)
  end

  not_found do
    content_type :json
    { status: 404, message: "Resource not found." }.to_json
  end
end
