class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDBo4xYVWol9tEihSRlAC6WFDHajs4n6n4hOUqQkwodd5aeClgd32h0DIlxeEnKiiA2CIOvB9LYiy8Gz4Mpn/4v9J0Fy1nF61bPrBTkjC8pNU6nFfxOBWzlom7iia0xxSk3ih3HfMb9CrDwI2FJ1TvSXFplWYNq4/+0h80xjFozBPbFjiTv9SCu4HmzSqwL9cOdx4hH8oIHOthqcydUwpKyRh4QfDf0+K6ITgurbJHaTfOX9UkjTaR00mYNND9V8I+pQWifOnyX3XaNnQ6ACJ+UYVFijhlonZTw0wpl+VuXIVVQ5zvJE96M4lDywD9YBfhOVnIT1QpLsGMUzKZtgMjt',
  }  
}
