# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include ordering::mysql
class ordering::mysql {
  class { 'mysql::server':
    root_password => 'strongpassword',
  }

  class { 'mysql::bindings':
    php_enable  => true,
    perl_enable => true,
  }

  contain mysql::server
  contain mysql::bindings
}
