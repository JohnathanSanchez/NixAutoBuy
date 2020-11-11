ui.add_checkbox("AutoBuy", "b_autobuy", false)

ui.add_combo("Primary", "b_primary", { "NONE", "AWP", "AUTO", "SCOUT", "AK47/M4A4", "AUG/SG553", "FAMAS/GALIL", "MAG7/SAWED OFF", "NOVA", "M249", "XM1014", "NEGEV", "MAC10/MP9", "MP7", "MP5", "PP-BIZON"},  0)
ui.add_combo("Secondary", "b_secondary", { "NONE", "DEAGLE/R8", "DUALIES", "P250", "FIVESEVEN/TEC9/CZ75"},  0)


ui.add_checkbox("FLASHBANG", "buy_flash", false)
ui.add_checkbox("DECOY", "buy_decoy", false)
ui.add_checkbox("GRENADE", "buy_he", false)
ui.add_checkbox("MOLLY", "buy_molly", false)
ui.add_checkbox("SMOKE", "buy_smoke", false)
ui.add_checkbox("ARMOR", "buy_armor", false)
ui.add_checkbox("ZEUS", "buy_taser", false)
ui.add_checkbox("DEFUSE KIT", "buy_defuse", false)


ui.add_color_edit("Lua By Kawsta", "lua_color", true, color_t.new(255, 255, 255, 255))
 
local function buy_bot(event)
    if event:get_name() == "round_prestart" then
    
    if ui.get_int("b_primary") == 0 then
      engine.execute_client_cmd(" ")
    end
    
    if ui.get_int("b_primary") == 1 then
      engine.execute_client_cmd("buy awp")
    end

    if ui.get_int("b_primary") == 2 then
      engine.execute_client_cmd("buy scar20; buy g3sg1")              
    end
    
    if ui.get_int("b_primary") == 3 then
      engine.execute_client_cmd("buy ssg08")  
    end
    
    if ui.get_int("b_primary") == 4 then
      engine.execute_client_cmd("buy ak47; buy m4a1")
    end

    if ui.get_int("b_primary") == 5 then
        engine.execute_client_cmd("buy sg556; buy aug")
    end
    
    if ui.get_int("b_primary") == 6 then
        engine.execute_client_cmd("buy galilar; buy famas")
    end

    if ui.get_int("b_primary") == 7 then
        engine.execute_client_cmd("buy sawedoff; buy mag7")
    end
    
    if ui.get_int("b_primary") == 8 then
        engine.execute_client_cmd("buy nova")
    end

    if ui.get_int("b_primary") == 9 then
        engine.execute_client_cmd("buy m249")
    end

    if ui.get_int("b_primary") == 10 then
        engine.execute_client_cmd("buy xm1014")
    end

    if ui.get_int("b_primary") == 11 then
        engine.execute_client_cmd("buy negev")
    end

    if ui.get_int("b_primary") == 12 then
        engine.execute_client_cmd("buy mac10; buy mp9")
    end

    if ui.get_int("b_primary") == 13 then
        engine.execute_client_cmd("buy mp7")
    end
    
        if ui.get_int("b_primary") == 14 then
        engine.execute_client_cmd("buy mp5")
    end
    
    if ui.get_int("b_primary") == 15 then
        engine.execute_client_cmd("buy bizon")
    end
    
    if ui.get_int("b_secondary") == 0 then
        engine.execute_client_cmd(" ")
    end

    if ui.get_int("b_secondary") == 1 then
        engine.execute_client_cmd("buy revolver; buy deagle")
    end
    
    if ui.get_int("b_secondary") == 2 then
        engine.execute_client_cmd("buy elite")
    end

    if ui.get_int("b_secondary") == 3 then
        engine.execute_client_cmd("buy p250")
    end

    if ui.get_int("b_secondary") == 4 then
        engine.execute_client_cmd("buy tec9; buy fiveseven")
    end

    if ui.get_bool("buy_flash") then
        engine.execute_client_cmd("buy flashbang")
    end

    if ui.get_bool("buy_decoy") then
        engine.execute_client_cmd("buy decoy")
    end

    if ui.get_bool("buy_he") then
        engine.execute_client_cmd("buy hegrenade")
    end

    if ui.get_bool("buy_molly") then
        engine.execute_client_cmd("buy molotov; buy incgrenade")
    end

    if ui.get_bool("buy_smoke") then
        engine.execute_client_cmd("buy smokegrenade")
    end
    
    if ui.get_bool("buy_armor") then
        engine.execute_client_cmd("buy vesthelm, buy vest")
    end

    if ui.get_bool("buy_taser") then
        engine.execute_client_cmd("buy taser")
    end

    if ui.get_bool("buy_defuse") then
        engine.execute_client_cmd("buy defuser")
    end

end
end

client.register_callback("fire_game_event", buy_bot)

