require 'sidekiq/cleaner'
Sidekiq::Cleaner.app_url = '/'

Rails.application.routes.draw do
  mount Sidekiq::Cleaner => '/cleaner'
  get "work" => "work#index"
  get "work/email" => "work#email"
  get "work/post" => "work#delayed_post"
  get "work/long" => "work#long"
  get "work/crash" => "work#crash"
  get "work/bulk" => "work#bulk"
end
