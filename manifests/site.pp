node 'node1' {

  include role::web

}

node 'node2' {

  include role::web

}

node default {
  notify { 'No definitions for this node': }
}
