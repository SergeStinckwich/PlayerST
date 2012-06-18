| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.
 
Metacello new
          baseline: 'PlayerST';
  repository: 'filetree://', gitPath, '/PlayerST';
  load: 'PlayerST'.

TravisCIHarness
        value:#('PlayerST-Tests')
        value: 'TravisCISuccess.txt'
        value: 'TravisCIFailure.txt'.