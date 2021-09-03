# == Class: centreon::client
#
# This class should be applied to the hosts you want to be monitored
##
# === Parameters
#
# None
#
# === Variables
#
# None
#
# === Examples
#
# include centreon::client
#
# === Authors
#
# knak - Maxime VISONNEAU <maxime@visonneau.fr>
#
# === Copyright
#
# Apache V2 License
#
class centreon::client($template='generic-host', $centreoname=$::hostname) {
  include centreon::packages

  # Host declaration
  @@centreon_host { $centreoname:
    ensure   => present,
    alias    => $centreoname,
    address  => $::ipaddress,
    template => $template,
  }

  # Ping service declaration
  #@@centreon_service { "check_ping_${::hostname}":
  #  ensure      => present,
  #  hostname    => $::hostname,
  #  template    => 'Ping-LAN',
  #  description => 'ping',
  #}
}
