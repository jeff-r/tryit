node default {
  include apt
  include stdlib

  package{"nginx-full":
    ensure => present,
  }

  package{"git":
    ensure => present,
  }

  package{"zlibc":
    ensure  => present,
  }

  package{"libxml2-dev":
    ensure => present,
  }

  package{"ruby-dev":
    ensure => present,
  }

  package{"zlib1g-dev":
    ensure => present
  }

  package{"rails":
    ensure   => installed,
    provider => "gem",
    require => [ Package["zlibc"], Package["libxml2-dev"], Package["ruby-dev"], Package["zlib1g-dev"] ]
  }

  package{"libsqlite3-dev":
    ensure => installed
  }

  file{"/etc/nginx/sites-enabled/default":
    ensure => link,
    target => "/vagrant/files/nginx/default",
    force  => true
  }

  service{"nginx":
    ensure  => running,
    require => [ Package["nginx-full"], File["/etc/nginx/sites-enabled/default"] ]
  }

  # dotfiles
  file{"/root/ez-dotfiles":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles",
  }
  file{"/root/scripts":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/scripts",
  }
  file{"/root/.vim":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/vim/vim",
  }
  file{"/root/.vimrc":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/vim/vimrc",
  }
  file{"/root/.bashrc":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/bash/bashrc"
  }
  file{"/root/.bash_profile":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/bash/bash_profile"
  }
  file{"/root/.bash_aliases":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/bash/bash_aliases"
  }
  file{"/root/.bash_functions":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/bash/bash_functions"
  }
  file{"/root/.bash_path":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/bash/bash_path"
  }
  file{"/root/.gitconfig":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/git/gitconfig"
  }
  file{"/root/.tmux.conf":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/tmux/tmux.conf"
  }

  file{"/home/vagrant/ez-dotfiles":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles",
  }
  file{"/home/vagrant/scripts":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/scripts",
  }
  file{"/home/vagrant/.vim":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/vim/vim",
  }
  file{"/home/vagrant/.vimrc":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/vim/vimrc",
  }
  file{"/home/vagrant/.bashrc":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/bash/bashrc"
  }
  file{"/home/vagrant/.bash_profile":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/bash/bash_profile"
  }
  file{"/home/vagrant/.bash_aliases":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/bash/bash_aliases"
  }
  file{"/home/vagrant/.bash_functions":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/bash/bash_functions"
  }
  file{"/home/vagrant/.bash_path":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/bash/bash_path"
  }
  file{"/home/vagrant/.gitconfig":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/git/gitconfig"
  }
  file{"/home/vagrant/.tmux.conf":
    ensure  => link,
    target  => "/vagrant/files/ez-dotfiles/tmux/tmux.conf"
  }


}
