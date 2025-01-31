# == Class: centreon::packages
#
# This class should be applied to the hosts you want to be monitored
# It will installed some required plugins
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
# include centreon::packages
#
# === Authors
#
# knak - Maxime VISONNEAU <maxime@visonneau.fr>
#
# === Copyright
#
# Apache V2 License
#

class centreon::packages {
  $centreonPackages = [
              'monitoring-plugins',
              'monitoring-plugins-standard',
              'monitoring-plugins-basic'
              ]

    # Commented out from Stella.
    # Lets install nagios checks from nrpe module
    #
              #  package { $centreonPackages:
              #ensure => installed,
              #}
}
