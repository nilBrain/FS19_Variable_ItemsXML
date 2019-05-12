# FS19_Variable_ItemsXML


![For Farming Simulator 19](https://img.shields.io/badge/Farming%20Simulator-19-FF7C00.svg)


## Overview
With this script you can use a different `items.xml` for the Singleplayer than for the Multiplayer.


## Installation
To be able to use the Script you have to adapt the xmlTag "map" in your modDesc.xml:

~~~ xml
<map id="SampleModMap" className="ModMap" filename="yourPath/ModMap.lua" configFilename="maps/mapDE.xml" defaultVehiclesXMLFilename="defaultVehicles.xml" defaultItemsXMLFilename="defaultItemsMULTIPLAYER.xml" defaultSingleplayerItemsXMLFilename="defaultItemsSINGLEPLAYER.xml">
~~~


If a modMap Script already exists, only the lines in the Script must be inserted into the "load" function.

~~~ lua
	if (not self.missionInfo.isValid) and (not self.missionDynamicInfo.isMultiplayer) then
		local modDesc = loadXMLFile("modDesc", self.baseDirectory .. "modDesc.xml");
		local key = "modDesc.maps.map#defaultSingleplayerItemsXMLFilename"
		if not hasXMLProperty(modDesc, key) then
			print("ERROR : xmlKey 'defaultSingleplayerItemsXMLFilename' in modDesc not found! ")
			return;
		end;
		self.missionInfo.itemsXMLLoad  = Utils.getFilename(getXMLString(modDesc, key), self.baseDirectory);
	end;
~~~
