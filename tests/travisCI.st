| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

Metacello new
  baseline: 'PlayerST';
  repository: 'filetree://', gitPath, '/PlayerST';
  load: 'Tests'.

"Run the tests"
MetacelloPlatform current authorName: 'testMonkey'. "These tests save code ... need an Author"

TravisCIHarness
        value: #('BaselineOfPlayerST')
        value: 'TravisCISuccess.txt'
        value: 'TravisCIFailure.txt'.
