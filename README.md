# QBCore-Bobcat-Heist

Credits Goes to https://github.com/aw3rque/efe-bobcat/tree/main/efe-bobcat

Requirements

https://github.com/aw3rque/efe-bobcat/tree/main/np-memorygame - MemoryGame
https://github.com/aw3rque/efe-bobcat/tree/main/bobcat - Interior

Doorlock Coords











 --Bobcat
 

["thermitec"] 				 	 = {["name"] = "thermitec",				    	["label"] = "Thermite Charge",			["weight"] = 1000,		["type"] = "item",		["image"] = "thermitec.png",		    ["unique"] = false,		["useable"] = true,		["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Go Burning"},



	{
		textCoords = vector3(882.19177, -2258.54, 32.441696),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.0,
		doors = {
			{
				objName = 'apa_v_ilev_ss_door7',
				objYaw = 175.0,
				objCoords = vector3(882.19177, -2258.54, 32.441696)    
			},

			{
				objName = 'apa_v_ilev_ss_door8',
				objYaw = 355.0,
				objCoords = vector3(882.19177, -2258.54, 32.441696) 		
			}
		}
	},

	{
		objName = 'v_ilev_cd_door2',
		objCoords  = vector3(880.84234, -2264.812, 32.441673),			
		textCoords = vector3(880.84234, -2264.812, 32.441673),
		authorizedJobs = { 'police' },
		objYaw = 175.0,
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,

	},

	{


		textCoords = vector3(881.29677, -2268.344, 32.441688),
		authorizedJobs = { 'police' },
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.0,
		doors = {
			{
				objName = 'v_ilev_ss_door03',
				objYaw = 175.0,
				objCoords = vector3(881.29677, -2268.344, 32.441688)    
			},

			{
				objName = 'v_ilev_ss_door03',
				objYaw = 355.0,
				objCoords = vector3(881.98712, -2268.751, 32.441673)		
			}
		}
	},


Make sure to change your state number in client  
