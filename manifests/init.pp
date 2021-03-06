# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include ordering
class ordering {
  include ordering::mysql
  notify { 'This should come after the entire MySQL class is enforced..//..':
    require => Class['Ordering::Mysql'],
  }
}
