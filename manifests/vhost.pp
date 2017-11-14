define nginx::vhost (
  Integer $port = 80,
  String $priority = '50',
  String $server_aliases = '',
  Boolean $enable = true,
  String $owner = $::nginx::config_owner,
  String $group = $::nginx::config_group,
  String $mode = $::nginx::config_mode,
  Optional[String] $config_vdir_enable = $::nginx::config_vdir_enable,
  String $log_dir = $::nginx::config_log_dir,
  String $vhost_dir = $::nginx::vhost_dir,
  String $service_name = $::nginx::service_name,
) {
  file { "Configure NGINX VHost ${name}":
    ensure => 'file',
    name => "${vhost_dir}/${priority}-${name}.conf",
    mode => $mode,
    owner => $owner,
    group => $group,
    content => template("${module_name}/vhost/vhost.conf.erb"),
    notify => Service[$service_name]
  }
}
