# FS19_Variable_ItemsXML


![For Farming Simulator 19](https://img.shields.io/badge/Farming%20Simulator-19-FF7C00.svg)


## Overview
With this script you can use a different `items.xml` for the Singleplayer than for the Multiplayer.


## Installation
To be able to use the Script you have to adapt the xmlTag "map" in your modDesc.xml:

~~~ xml
<map id="SampleModMap" className="ModMap" filename="yourPath/ModMap.lua" configFilename="maps/mapDE.xml" defaultVehiclesXMLFilename="defaultVehicles.xml" defaultItemsXMLFilename="defaultItemsMULTIPLAYER.xml" defaultSingleplayerItemsXMLFilename="defaultItemsSINGLEPLAYER.xml">
~~~
