require 'foomailer/mailer'

module FooMailer
  class Railtie < ::Rails::Railtie
    initializer "foomailer.add_delivery_method" do
      ActiveSupport.on_load(:action_mailer) do
        add_delivery_method :foo, FooMailer::Mailer
        ActiveSupport.run_load_hooks(:foo_mailer, FooMailer::Mailer)
      end
    end
  end
end
