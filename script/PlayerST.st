 Gofer new
    url: 'http://ss3.gemstone.com/ss/FileTree';
    package: 'ConfigurationOfFileTree';
    load.
  ((Smalltalk at: #ConfigurationOfFileTree) project version: '1.0') load.
repo := '~/builds/PlayerST'.
Gofer new
    repository: (MCFileTreeRepository new directory: 
                    (FileDirectory on: repo));
    package: 'PlayerST';
    load.