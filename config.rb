set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'assets'

activate :sprockets

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Firefox ESR']
end

configure :development do
  activate :livereload
end

configure :build do
  #activate :imageoptim
  activate :minify_css
  activate :minify_javascript
end


after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
  sprockets.append_path 'vendor/js'
  sprockets.append_path 'vendor/css'
end
