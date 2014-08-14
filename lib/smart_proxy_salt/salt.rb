module Proxy::Salt
  class NotFound < RuntimeError; end

  class Plugin < ::Proxy::Plugin
    plugin 'salt', Proxy::Salt::VERSION

    default_settings :autosign_file => '/etc/salt/autosign.conf'
    default_settings :salt_command_user  => 'root'

    http_rackup_path File.expand_path('salt_http_config.ru', File.expand_path('../', __FILE__))
    https_rackup_path File.expand_path('salt_http_config.ru', File.expand_path('../', __FILE__))
  end
end
