PLUGIN = nil

function Initialize(Plugin)
	Plugin:SetName("CCP")
	Plugin:SetVersion(1)

	-- Hooks
	
	PLUGIN = Plugin -- NOTE: only needed if you want OnDisable() to use GetName() or something like that

	dofile(cPluginManager:GetPluginsPath() .. "/InfoReg.lua")
	RegisterPluginInfoCommands()
	RegisterPluginInfoConsoleCommands()
	
	LOG("Initialised " .. Plugin:GetName() .. " v." .. Plugin:GetVersion())
	return true
end

function OnDisable()
	LOG(PLUGIN:GetName() .. " is shutting down...")
end