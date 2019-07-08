ModMap = {}
local ModMap_mt = Class(ModMap, Mission00)
function ModMap:new(baseDirectory, customMt, missionCollaborators)
    local mt = customMt;
    if mt == nil then
        mt = ModMap_mt;
    end;
    local self = ModMap:superClass():new(baseDirectory, mt, missionCollaborators);
    return self;
end;

function ModMap:load()
	ModMap:superClass().load(self);
	--@	if exist modMap Lua then need you only this Part in the load function!!!
	if not self.missionInfo.isValid and not g_currentMission.missionDynamicInfo.isMultiplayer and g_dedicatedServerInfo == nil then
		local modDesc = loadXMLFile("modDesc", self.baseDirectory .. "modDesc.xml");
		local key = "modDesc.maps.map#defaultSingleplayerItemsXMLFilename"
		if not hasXMLProperty(modDesc, key) then
			print("ERROR : xmlKey 'defaultSingleplayerItemsXMLFilename' in modDesc not found! ")
			return;
		end;
		self.missionInfo.itemsXMLLoad  = Utils.getFilename(getXMLString(modDesc, key), self.baseDirectory);
		delete(modDesc);
	end;
	--@ Part end!
end;