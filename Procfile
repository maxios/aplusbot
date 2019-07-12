web: bundle exec puma -C config/puma.rb
sidekiq: bundle exec sidekiq -C config/sidekiq.yml -q stealth_webhooks -q stealth_replies -q default -r ./config/boot.rb
release: bundle exec rake db:migrate
