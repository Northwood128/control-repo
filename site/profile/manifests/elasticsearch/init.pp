# Class: elasticsearch
# ===========================

class profile_elasticsearch {

  include profile_elasticsearch::install
  include profile_elasticsearch::instances
  include profile_elasticsearch::curator

}

