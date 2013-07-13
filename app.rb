require 'sinatra'

get '/' do
	dir = './public/news_items'
	@num_files = Dir[File.join(dir, '**', '*')].count { |file| File.file?(file)}
	erb :index
end