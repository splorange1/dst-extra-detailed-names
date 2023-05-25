name = "Extra Detailed Names"
--The name of your mod
description = "Replaces the name of certain objects with a more descriptive one\nCredits to ZoomZoomBang for some code"
--The description that shows when you are selecting the mod from the list
author = "splorange"
--Your name!
version = "1.0"

forumthread = ""

icon_atlas = "modicon.xml"

icon = "modicon.tex"

dst_compatible = true
forge_compatible = true
gorge_compatible = true

dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

all_clients_require_mod = false
server_only_mod = false
client_only_mod = true

api_version = 10
--This is the version of the game's API and should stay the same for the most part
configuration_options =
{
    {
        name = "ruins_statue_config",
        label = "Ancient Statue Details",
        options =
        {
            {description = "Yes", data = true},
            {description = "No", data = false},

        },
        default = true,
    },
    {
        name = "archive_fountain_config",
        label = "Archive Fountain Details",
        options =
        {
            {description = "Yes", data = true},
            {description = "No", data = false},

        },
        default = true,
    }
}
