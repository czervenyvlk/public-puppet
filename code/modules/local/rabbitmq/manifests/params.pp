  # Class: rabbitmq::params
#
#   The RabbitMQ Module configuration settings.
#
class rabbitmq::params {
    $package_ensure             = 'installed'
    $package_name               = 'rabbitmq-server'
    $service_name               = 'rabbitmq-server'
    $package_provider           = 'rpm'
    $version                    = '3.1.5-1'
    $rabbitmq_user              = 'rabbitmq'
    $rabbitmq_group             = 'rabbitmq'
    $rabbitmq_home              = '/var/lib/rabbitmq'
    $plugin_dir                 = "/usr/lib/rabbitmq/lib/rabbitmq_server-${version}/plugins"

    #install
    $admin_enable               = true
    $management_port            = '15672'
    $package_apt_pin            = ''
    $package_gpg_key            = 'http://www.rabbitmq.com/rabbitmq-signing-key-public.asc'
    $repos_ensure               = true
    $manage_repos               = undef
    $service_ensure             = 'running'
    $service_manage             = true

    #config
    $cluster_node_type          = 'disc'
    $cluster_nodes              = []
    $config                     = 'rabbitmq/rabbitmq.config.erb'
    $config_cluster             = false
    $config_path                = '/etc/rabbitmq/rabbitmq.config'
    $config_stomp               = false
    $default_user               = 'admin'
    $default_pass               = 'admin'
    $delete_guest_user          = true
    $env_config                 = 'rabbitmq/rabbitmq-env.conf.erb'
    $env_config_path            = '/etc/rabbitmq/rabbitmq-env.conf'
    $erlang_cookie              = undef
    $interface                  = 'UNSET'
    $node_ip_address            = 'UNSET'
    $port                       = '5672'
    $tcp_keepalive              = false
    $ssl                        = false
    $ssl_only                   = false
    $ssl_cacert                 = 'UNSET'
    $ssl_cert                   = 'UNSET'
    $ssl_key                    = 'UNSET'
    $ssl_port                   = '5671'
    $ssl_interface              = 'UNSET'
    $ssl_management_port        = '15671'
    $ssl_stomp_port             = '6164'
    $ssl_verify                 = 'verify_none'
    $ssl_fail_if_no_peer_cert   = false
    $ssl_versions               = undef
    $ssl_ciphers                = []
    $stomp_ensure               = false
    $ldap_auth                  = false
    $ldap_server                = 'ldap'
    $ldap_user_dn_pattern       = 'cn=username,ou=People,dc=example,dc=com'
    $ldap_other_bind            = 'anon'
    $ldap_use_ssl               = false
    $ldap_port                  = '389'
    $ldap_log                   = false
    $ldap_config_variables      = {}
    $stomp_port                 = '6163'
    $wipe_db_on_cookie_change   = false
    $cluster_partition_handling = 'ignore'
    $environment_variables      = {}
    $config_variables           = {}
    $config_kernel_variables    = {}
    $file_limit                 = 16384
}
