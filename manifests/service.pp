class nginx::service (
  String $service_pattern = $::nginx::service_pattern,
  String $service_ensure = $::nginx::service_ensure,
  String $service_name = $::nginx::service_name,
  Boolean $service_enable = $::nginx::service_enable,
  Boolean $service_hasstatus = $::nginx::service_hasstatus,
  Boolean $service_hasrestart = $::nginx::service_hasrestart,
) {
  service { 'Start NGINX':
    ensure => $service_ensure,
    name => $service_name,
    enable => $service_enable,
    hasstatus => $service_hasstatus,
    hasrestart => $service_hasrestart,
    pattern => $service_pattern,
  }
}
