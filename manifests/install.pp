class nginx::install (
  String $package_ensure = $::nginx::package_ensure,
  String $package_name = $::nginx::package_name,
) {
  package {'Install NGINX':
    ensure => $package_ensure,
    name => $package_name,
  }
}
