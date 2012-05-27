## PlayerST

PlayerST is a client library for the [Player/Stage](https://github.com/rtv/Stage) robotic device server. This library allows the use of Smalltalk as a client for Player. 
PlayerST has been developed by Serge Stinckwich (UMMISCO) and IA department of Ecole des Mines de Douai. This software is available under the open-source MIT licence.

In order to run PlayerST, you need to install Player 2.1.2 and Stage 2.1.1 on your platform. More recent of Player/Stage might be work.

http://www.youtube.com/watch?v=6hhKzEf_jcw

## How to install PlayerST with SS3

* Download the last Pharo 1.4 image

* Use SS3 repository:

```Smalltalk
  Gofer new
    repository: 'http://ss3.gemstone.com/ss/PlayerST';
    package: 'PlayerST';
    load
```

## How to install PlayerST with github

* Download the last Pharo 1.4 image

* Bootstrap FileTree:

```Smalltalk
  Gofer new
    url: 'http://ss3.gemstone.com/ss/FileTree';
    package: 'ConfigurationOfFileTree';
    load.
  ((Smalltalk at: #ConfigurationOfFileTree) project version: '1.0') load.
```

* Clone this repository:

```shell
  mkdir PlayerST
  cd PlayerST
  git clone https://github.com/SergeStinckwich/PlayerST.git
```

* Attach to filetree repository and load latest packages (use correct path to your filetree download/clone):

```Smalltalk
repo := 'Add you repo path here'.
Gofer new
    repository: (MCFileTreeRepository new directory: 
                    (FileDirectory on: repo));
    package: 'PlayerST';
    load.
```