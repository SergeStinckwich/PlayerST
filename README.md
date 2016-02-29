# PlayerST

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/SergeStinckwich/PlayerST/master/LICENSE)
[![Build Status](https://secure.travis-ci.org/SergeStinckwich/PlayerST.png)](http://travis-ci.org/SergeStinckwich/PlayerST)

PlayerST is a client library for the [Player/Stage](https://github.com/rtv/Stage) robotic device server. This library allows the use of Smalltalk as a client for Player. 
PlayerST has been developed by Serge Stinckwich (UMMISCO) and IA department of Ecole des Mines de Douai. This software is available under the open-source MIT licence.

In order to run PlayerST, you need to install Player 2.1.2 and Stage 2.1.1 on your platform. More recent of Player/Stage might be work.

http://www.youtube.com/watch?v=6hhKzEf_jcw

## How to install PlayerST

```Smalltalk
Metacello new
    baseline: 'PlayerST';
    repository: 'github://SergeStinckwich/PlayerST';
    load
```
