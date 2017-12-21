node 'node3' {

  include role::web

}

node default {
  notify { 'No definitions for this node': }
}
