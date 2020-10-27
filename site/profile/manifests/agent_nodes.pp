class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  dockeragent::node {'minetest.puppet.vm':}
  dockeragent::node {'minetest_new.puppet.vm':}
  host {'web.puppet.vm':
    ensure => present,
    ip     => '172.18.0.3',
  }
  host {'db.puppet.vm':
    ensure => present,
    ip     => '172.18.0.2',
  }
}
