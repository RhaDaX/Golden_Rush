require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { db: 1 }
end

Sidekiq.configure_server do |config|
  config.redis = { db: 1 }
end

class OurWorker
  include Sidekiq::Worker
  
  def perform(complexity)
    case complexity
    when "super_hard"
      sleep 20
      puts "Relativement complexe non ?"
    when "hard"
      sleep 10
      puts "Mouais pas non plus trop dur"
    else
      sleep 1
      puts 'Tranquille !'
    end
  end
end