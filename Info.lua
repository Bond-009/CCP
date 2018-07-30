g_PluginInfo =
{
	Name = "CCP",
	Version = "1",
	Date = "04-01-2017",
	SourceLocation = "https://github.com/Bond_009/CCP",
	Description = "Custom Cuberite Plugin",

	Commands =
	{
		["/del"] = 
		{
			Permission = "core.admin.clear",
			Handler = HandleDelCommand,
			HelpString = "Deletes your equiped item",
		},
		["/ocelots"] = 
		{
			Handler = HandleOcelotsCommand,
			HelpString = "Kils all ocelots",
		},
	},
}
