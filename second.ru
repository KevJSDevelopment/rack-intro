require 'rack'

class MyServer
    def call(env)
        return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]

        def pretty_response
            (Time.now.to_i % 2).zero? ? ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
        end
    end
end

run MyServer.new