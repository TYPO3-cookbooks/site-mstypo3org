name             "site-mstypo3org"
maintainer       "Steffen Gebert"
maintainer_email "steffen.gebert@typo3.org"
license          "Apache2"
description      "Installs/Configures physical host servers"
long_description "Installs/Configures physical host servers"
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.0.1'

recipe           "site-mstypo3org::_common",  "Common functionality. Not really meant for direct inclusion"
recipe           "site-mstypo3org::openvz",   "Manages OpenVZ host setup"
recipe           "site-mstypo3org::kvm",      "Manages KVM host setup"

supports         "debian"

depends          "t3-base",    "~> 0.2.0"
depends          "t3-openvz",  "~> 2.0.0"
depends          "t3-kvm",     "~> 1.0.0"
depends          "t3-tinc",    "~> 1.0.0"
