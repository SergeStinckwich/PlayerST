Gofer new
    repository: (MCFileTreeRepository new directory: 
                    (FileDirectory on: '/home/vagrant/builds/SergeStinckwich/PlayerST/'));
    package: 'PlayerST';
    load.
TravisCIHarness
        value:#('PlayerST-Tests')
        value: 'TravisCISuccess.txt'
        value: 'TravisCIFailure.txt'.