-- this is a flat list of all the quest descriptions and their titles.
-- format should be as follows: ["unique_string_id"] =
--      {"title", "description", completion_description, completion_event_group, completion_event_name, location_name, location_banner_filename, location_subname, location_subimage},
-- When the event value of the completion_event_name in the completion_event_group is equal to 1, the quest is considered complete.
-- location_name, location_subname, location_subimage and location_banner_filename are optional fields, and they are used to display the quest start location and associated banner image
-- All fields can be empty but are required.

-- Use the 'GlobalManager:AddQuestLog("string_id");' luabind script command to add a quest entry in the player's quest log.

quests = {
    -- Quest id
    ["get_barley"] = {
        -- Title
        vt_system.Translate("Get Some Barley Meal"),
        -- Description
        vt_system.Translate("Mom needs some for dinner!\n \nFlora might have some in her shop -- I should go and have a look there first."),
        -- Completion Description
        vt_system.Translate("Finally, I found some... Lilly had what I sought in her house all the time."),
        -- Group and event for the quest to be complete.
        "story", "quest1_barley_meal_done",
        -- Location name and banner image filename
        vt_system.Translate("Village of Layna"), "img/menus/locations/mountain_village.png",
        -- Location sub-name and image filename
        vt_system.Translate("Bronann's home"), "img/menus/quests/get_barley.png",
    },

    -- Quest id
    ["find_pen"] = {
        -- Title
        vt_system.Translate("Find Georges' pen"),
        -- Description
        vt_system.Translate("In order to know who George gave the rest of his barley meal to, I need to get back his lost pen.\n \nHe said he lost it near a tree; he also told me that people in the village might know more..."),
        -- Completion Description
        vt_system.Translate("Orlinn had the pen; I ran after him all morning to get it back. I hope he won't have any problems with Kalya..."),
        -- Group and event for the quest to be complete.
        "layna_center", "quest1_pen_given_done",
        -- Location name and banner image filename
        vt_system.Translate("Village of Layna"), "img/menus/locations/mountain_village.png",
        -- Location sub-name and image filename
        vt_system.Translate("Village center"), "img/menus/quests/find_pen.png",
    },

    -- Quest id
    ["hide_n_seek_with_orlinn"] = {
        -- Title
        vt_system.Translate("Catch Orlinn!"),
        -- Description
        vt_system.Translate("Orlinn has got the pen I need to back to Georges! The only problem now is to find where he's hiding. Hmm, it shouldn't take long..."),
        -- Completion Description
        vt_system.Translate("After chasing him around the village all morning, I finally have the pen. Time to bring it back to George..."),
        -- Group and event for the quest to be complete.
        "layna_riverbank", "quest1_orlinn_hide_n_seek3_done",
        -- Location name and banner image filename
        vt_system.Translate("Village of Layna"), "img/menus/locations/mountain_village.png",
        -- Location sub-name and image filename
        vt_system.Translate("Village center"), "img/menus/quests/hide_n_seek_with_orlinn.png",
    },

    -- Quest id
    ["wants_to_go_into_the_forest"] = {
        -- Title
        vt_system.Translate("Let's go in the woods..."),
        -- Description
        vt_system.Translate("It's been weeks since I could go outside the village.\n \nThe entrance has been shut with stones, and now they won't even let me go and breathe in the only place I could be alone?!?\n \nWhatever... I need a sword just in case... and I'll get there alone!"),
        -- Completion Description
        vt_system.Translate("I'm now equipped, and access to the forest has been granted!"),
        -- Group and event for the quest to be complete.
        "story", "kalya_has_joined",
        -- Location name and banner image filename
        vt_system.Translate("Village of Layna"), "img/menus/locations/mountain_village.png",
        -- Location sub-name and image filename
        vt_system.Translate("Bronann's home"), "img/menus/quests/wants_to_go_into_the_forest.png",
    },

    -- Quest id
    ["bring_orlinn_back"] = {
        -- Title
        vt_system.Translate("Orlinn might be in danger!"),
        -- Description
        vt_system.Translate("After seeing that strange light, Orlinn just ran into the woods. He's just a kid, even if a quick one!\n \nMy father asked me to go there with Kalya and get him back safe and sound.\n \nI can't let them down!"),
        -- Completion Description
        vt_system.Translate("We finally retrieved Orlinn in the center of the forest. A mysterious wolf was protecting him, and we came just in time to prevent him from approaching a strange crystal..."),
        -- Group and event for the quest to be complete.
        "story", "layna_forest_crystal_event_done",
        -- Location name and banner image filename
        vt_system.Translate("Village of Layna"), "img/menus/locations/mountain_village.png",
        -- Location sub-name and image filename
        vt_system.Translate("Village center"), "img/menus/quests/bring_orlinn_back.png",
    },

    -- Quest id
    ["flee_from_the_dark_soldiers"] = {
        -- Title
        vt_system.Translate("We must escape from the soldiers..."),
        -- Description
        vt_system.Translate("After we came back to the village, Kalya was caught by strange soldiers. The country Lord himself provoked me in battle, and thanks to her, we escaped for now.\n \nBut this isn't over, the soldiers are after us and we have to make our way through..."),
        -- Completion Description
        vt_system.Translate("We managed to find a way up to the mountain top."),
        -- Group and event for the quest to be complete.
        "none", "none",
        -- Location name and banner image filename
        vt_system.Translate("Village of Layna"), "img/menus/locations/mountain_village.png",
        -- Location sub-name and image filename
        vt_system.Translate("Kalya's home basement"), "img/menus/quests/flee_from_dark_soldiers.png",
    }
}
