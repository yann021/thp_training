class RailsNew

  def initialize
    @project_name = ARGV[0]
  end

  def init
    system("rails new -d postgresql #{@project_name} --skip-bundle")
    Dir.chdir "#{@project_name}"
  end

  def gemfile
    gemfile = File.readlines("Gemfile")
    gemfile.insert(41,"  gem 'rspec-rails'\n")
    gemfile.insert(42,"  gem 'factory_bot_rails'\n")
    gemfile.insert(52,"  gem 'letter_opener'\n")
    gemfile.insert(60,"  gem 'shoulda-matchers'\n")
    gemfile.insert(61,"  gem 'rails-controller-testing'\n")
    gemfile << "\ngem 'faker'\ngem 'table_print'\ngem 'devise'\ngem 'dotenv-rails'\n"

    if ARGV.size > 1
      ARGV[1..-1].each {|gem| gemfile << '\ngem ''#{gem}'''}
    end

    File.write("Gemfile", gemfile.join)
    system("bundle install")
    # system("rails db:create")      -->  # Création déjà prise en charge par Rails à-priori
  end

  def rspec
    system("rails g rspec:install")
    File.open("spec/rails_helper.rb","a").write("\nconfig.include FactoryBot::Syntax::Methods\n\nShoulda::Matchers.configure do |config|\n  config.integrate do |with|\n    with.test_framework :rspec\n    with.library :rails\n  end\nend\n")
  end

  def devise
    system("rails g devise:install")
    dev = File.readlines("config/environments/development.rb")
    dev.insert(60, "  config.action_mailer.delivery_method = :smtp\n  config.action_mailer.smtp_settings = { \n    address: 'localhost',\n    port: 1025\n  }\n  config.action_mailer.default_url_options = {host: 'localhost', port: '3000'}\n")
    File.write("config/environments/development.rb", dev.join)

    system("rails g controller Home index private")
    system("rails g devise:views")
    system("rails g controller Users show destroy")
    system("rails g devise User")
    system("rails g devise:controllers User")
    routes = File.open("config/routes.rb", "w")
    routes.puts("  Rails.application.routes.draw do\n    unauthenticated do\n      root :to => 'home#index'\n    end\n\n    authenticated do\n      root :to => 'home#private'\n    end\n\n    resources :users, only: [:show, :destroy], :path => 'profile'\n\n  end")

    layout = File.readlines("app/views/layouts/application.html.erb")
    layout.insert(12, "    <p class=""notice""><%= notice %></p>\n")
    layout.insert(13, "    <p class=""alert""><%= alert %></p>\n")

    File.write("app/views/layouts/application.html.erb", layout.join)

    devise = File.readlines("config/initializers/devise.rb")
    devise.insert(235, "  config.scoped_views = true\n")
    File.write("config/initializers/devise.rb", devise.join)
  end

  def dotenv
    system("touch .env") if File.file?(".env") == false
    system("touch .gitignore") if File.file?(".gitignore") == false
    giti = File.readlines(".gitignore")
    giti << "\n.env\n"
  end

  def launchdb
    system("rails db:create")
    system("rails s")
  end

  def perform
    init
    gemfile
    rspec
    devise
    dotenv
  end
 
end

RailsNew.new.perform