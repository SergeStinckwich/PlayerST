as yet unclassified
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec package: 'PlayerST-Kernel'.
            spec package: 'PlayerST-Interface' with: [ spec requires: 'PlayerST-Kernel' ].
            spec package: 'PlayerST-Tests' with: [ spec requires: 'PlayerST-Kernel'.
																	spec requires:'PlayerST-Interface'].
            spec
                group: 'default' with: #('Kernel');
                group: 'Kernel' with: #('PlayerST-Kernel');
                group: 'Tests' with: #('PlayerST-Tests') ]