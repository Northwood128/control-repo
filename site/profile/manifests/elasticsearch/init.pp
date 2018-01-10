# Class: elasticsearch
# ===========================

class profile::elasticsearch6 {

  include profile_elasticsearch6::install
  include profile_elasticsearch6::instances
  include profile_elasticsearch6::backup

}

