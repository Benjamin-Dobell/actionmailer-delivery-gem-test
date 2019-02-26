module FooMailer
  class Mailer
    attr_accessor :config

    def initialize(config)
      @config = config

      raise "FooMailer is missing test_prop" unless @config.has_key?(:test_prop)
    end

    def deliver!(mail)
      raise "Not a real mailer"
    end
  end
end
