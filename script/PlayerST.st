 Gofer new
    url: 'http://ss3.gemstone.com/ss/FileTree';
    package: 'ConfigurationOfFileTree';
    load.
  ((Smalltalk at: #ConfigurationOfFileTree) project version: '1.0') load.
repo := '/home/vagrant/builds/SergeStinckwich/PlayerST'.
Gofer new
    repository: (MCFileTreeRepository new directory: 
                    (FileDirectory on: repo));
    package: 'PlayerST';
    load.
HDTestReport runPackages: #(
             'PlayerST-Tests'
).