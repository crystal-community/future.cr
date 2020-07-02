require "http"

require "../src/future.cr" # require "future"

API_URL = "https://jsonplaceholder.typicode.com/todos/1"

promise = future do
  HTTP::Client.get(API_URL) do |result|
    if result.status_code == 200
      IO.copy(result.body_io, STDOUT)
      puts("\nRequest To #{API_URL} Complete")
    else
      puts("Request Failed With Status #{result.status_code.inspect}")
    end
  end
end

puts "API Request Started"
promise.get
puts "Promise Is Really Complete? #{promise.completed?}"
puts "After Resolving Promise"
