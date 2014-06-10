class strings::profile::base {

  include scout
  include duplicity::cloudfiles

  create_resources(package, hiera_hash('strings::extra_pkgs', {}))
  create_resources(duplicity::job::cloudfiles, hiera_hash('strings::backup_jobs', {}))
}
