class MyWorker
  include Sidekiq::Worker
  def perform(name, count)
    wait_time = (5..10).to_a.sample
    logger.info "#{name} says the count is #{count}, waiting #{wait_time} seconds."
    sleep(wait_time)
  end
end
