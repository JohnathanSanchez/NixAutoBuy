ui.add_checkbox("AutoBuy", "b_autobuy", false)

ui.add_combo("Primary", "b_primary", { "NONE", "AWP", "AUTO", "SCOUT", "AK47/M4A4", "AUG/SG553", "FAMAS/GALIL", "MAG7/SAWED OFF", "NOVA" } 0)
ui.add_combo("Secondary", "b_secondary", { "NONE", "DEAGLE/R8", "DUALIES", "P250", "FIVESEVEN/TEC9/CZ75" }  0)


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
                       
end

client.register_callback("fire_game_event", buy_bot)

