class ApplicationService
  def self.call(...)
    new(...).call
  end

  def logger
    @logger ||= Rails.logger
  end

  def url_helpers
    Rails.application.routes.url_helpers
  end
end
