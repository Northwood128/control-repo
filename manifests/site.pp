node 'node1' {

  include base

  class { '::tomcat':
    
    xms            => '60m',
    xmx            => '120m',
    user           => 'tomcat',
    group          => 'tomcat',
    service_state  => 'running'
    
  }
  
  tomcat::deploy {"sysfoo":
    deploy_url      => 'https://1-114787399-gh.circle-artifacts.com/0/tmp/circle-artifacts.emAMKsh/sysfoo.war',
    checksum_value  => '0a77630ef8b3e8af4053e8ba21aae01e'
  }
}

node 'node2' {

  include base

  class { '::tomcat':
    
    xms            => '70m',
    xmx            => '130m',
    user           => 'tomcat',
    group          => 'tomcat',
    service_state  => 'running'
    
  }
  
  tomcat::deploy {"sysfoo":
    deploy_url      => 'https://1-114787399-gh.circle-artifacts.com/0/tmp/circle-artifacts.emAMKsh/sysfoo.war',
    checksum_value  => '0a77630ef8b3e8af4053e8ba21aae01e'
  }
}

node default {
  notify { 'No definitions for this node': }
}