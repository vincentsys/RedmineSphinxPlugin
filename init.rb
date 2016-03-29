# -*- coding: utf-8 -*-

Redmine::Plugin.register :sphinx do
  name 'Redmine Sphinx plugin'
  author 'vincentsys'
  description 'Sphinx docu plugin for redmine'
  version '0.2.0'

  # Add sphinx document tab
  project_module :sphinx do
    permission :sphinx, {:sphinx => [:index]}, :public => true
  end
  menu :project_menu, :sphinx_list, { :controller => 'sphinx', :action => 'index' }, :caption => 'Sphinx Documents', :param => :project_id
end
