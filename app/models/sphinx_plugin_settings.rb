# -*- coding: utf-8 -*-
require 'settingslogic'

class SphinxPluginSettings < Settingslogic
  
  source "/opt/redmine/redmine-3.1.2/config/sphinx_plugin_setting.yml"
  namespace Rails.env

end
