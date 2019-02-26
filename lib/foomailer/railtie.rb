require 'foomailer/mailer'

module FooMailer
  class Railtie < ::Rails::Railtie
    initializer "foomailer.add_delivery_method" do
      Rails.logger.warn("foomailer.add_delivery_method initializer called")
      ActiveSupport.on_load(:action_mailer) do
        add_delivery_method :foo, FooMailer::Mailer
        Rails.logger.warn("ActionMailer :foo delivery method added")
        ActiveSupport.run_load_hooks(:foo_mailer, FooMailer::Mailer)
      end
    end
  end
end
