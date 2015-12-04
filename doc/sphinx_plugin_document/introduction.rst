====================================
Overview of Redmine Sphinx Plugin
====================================

This tool is a Redmine plug-in that provides the following functions.

Functions
-----------------------

* Display of Sphinx documents on Redmine
* Automatic compilation of Sphinx documents that have been uploaded to the repository

Notes
-----------------------

* In order to use this plug-in, you must have done in advance the creation of project on Redmine, and the setting of the repository
* Find the Sphinx Makefile in the repository, it is possible to carry out the make, you have to compile the document. If the Makefile does not exist, it will not be able to correctly display the Sphinx document.
* At present, it does not support other than Git repository


How to use this plug-in
-------------------------

After installing this plug-in, tab of the Sphinx document appears on the Redmine Project menu bar (Figure 1).

.. image:: image/menubar.png
  :scale: 100%

Figure 1: Sphinx document tab that has been added to the Project menu bar


If you click on the tab of the Sphinx document, the repository list is displayed (Figure 2).

.. image:: image/sphinx_plugin.png
  :scale: 100%

Figure 2: List of Sphinx document


When you click the Show Document link in the page to display the sphinx document in the repository automatically Looking.



How to install
-----------------

In order to use this plug-in, you must install the previously Settingslogic. Settingslogic you can install with the following command.

.. code-block:: bash

  $ gem install settingslogic


This plug-in can be downloaded from github. Go to the appropriate directory, please obtain the plug-in by running the following command.

.. code-block:: bash

  $ git clone git://github.com/nishio-dens/RedmineSphinxPlugin.git


The RedmineSphinxPlugin directory acquired, please copy vendor / plugins / in in the Redmine plug-in directory.

In that case, please rename RedmineSphinxPlugin directory to sphinx.

For example, located in the acquired plug-in directory is / home / test / in Download, if Redmine is installed in / var / test / redmine, please do the copy by running the following command.

.. code-block:: bash

  $ cp -rf /home/test/Download/RedmineSphinxPlugin/ /var/test/redmine/vendor/plugins/sphinx


Finally, we will make the setting of Redmine Sphinx plug-ins.

A sample configuration file, in the Redmine Sphinx plugin directory, has been present in the sample / sphinx_plugin_setting.yml.sample.

A sample configuration file, please be installed in config / sphinx_plugin_setting.yml in the directory that Redmine is installed.

.. code-block:: yaml

  defaults: &defaults
  
    server:
      #公開ディレクトリのルート
      document_root_path: /var/www/
      #ドキュメントを設置するディレクトリ名
      sphinx_dir: redminetest
      #html表示サーバのポート番号
      server_port: 80
  
    sphinx:
      sphinx_makefile_head: '# Makefile for Sphinx documentation'
      build_dir_variable_name: 'BUILDDIR'
      sphinx_index_page: index.html
  
  development:
    <<: *defaults
  
  test:
    <<: *defaults
  
  production:
    <<: *defaultsdefaults: &defaults
  

In this plug-in, and a sphinx document was compiled, make the display is installed in a directory that is published to the web.

The root path of the public directory in document_root_path, please specify the name of the directory to be installed compiled sphinx document to sphinx_dir.

This completes the set above.

