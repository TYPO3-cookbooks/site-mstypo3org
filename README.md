# Description

This set ups a physical server (aka. master server).
# Requirements

## Platform:

* debian

## Cookbooks:

* t3-base (~> 0.2.0)
* t3-openvz (~> 1.1.0)
* zabbix-custom-checks (~> 0.2.0)

# Attributes

*No attributes defined*

# Recipes

* site-mstypo3org::default - Default recipe, only includes t3-base cookbook. Not really meant for direct inclusion
* site-mstypo3org::openvz - Manages OpenVZ host setup

# License and Maintainer

Maintainer:: Steffen Gebert (<steffen.gebert@typo3.org>)

License:: Apache2
