get '/' do
  "Hi from Basecamp-giphy bot! 🤖"
end

get '/test/:query' do
  gif_url = get_gif params['query']
  "<img src='#{gif_url}'>"
end

post '/cmd' do
  request.body.rewind
  payload = JSON.parse request.body.read
  gif = get_gif payload['command']
  "<img src='#{gif}'>"
end

private 

def get_gif(query)
  api_instance = GiphyClient::DefaultApi.new

  api_key = ENV["GIPHY_API_KEY"]

  opts = { 
    limit: 1, 
    offset: 0,
    rating: "g",
    lang: "en",
    fmt: "json"
  }

  begin
    result = api_instance.stickers_translate_get(api_key, query, opts)
    case result.meta.status
    when 200
      result.data.images.fixed_height.url
    else
      "Error #{result.meta.status} - #{result.meta.msg}"
    end
  rescue GiphyClient::ApiError => e
    puts "Exception when calling DefaultApi->gifs_search_get: #{e}"
  end
end