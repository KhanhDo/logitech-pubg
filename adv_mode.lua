--------------------------------------------------------------------------
----------------        Basic Variable       -----------------------------
----------------         Do not edit                 ---------------------
--------------------------------------------------------------------------
local current_weapon = "none"

--------------------------------------------------------------------------
----------------        Basic Setting       ------------------------------
--------------------------------------------------------------------------

---- key bind ----

local ump9_key = 5
local akm_key = nil
local m16a4_key = nil
local m416_key = nil
local scarl_key = nil
local uzi_key = nil
local qbz_key = nil
local set_off_key = 6

---- keyboard ---- Only Support logitech G Keyboard

local ump9_gkey = nil ---1 is use F1.
local akm_gkey = nil
local m16a4_gkey = nil
local m416_gkey = nil
local scarl_gkey = nil
local uzi_gkey = nil
local qbz_key = nil
local set_off_gkey = nil

---- fire key ----

local fire_key = "PAUSE"

---- can use "lalt", "ralt", "alt"  "lshift", "rshift", "shift"  "lctrl", "rctrl", "ctrl"

local ignore_key = "rctrl" --- ignore key
local hold_breath_key = "lshift"

---- only can use "numlock", "capslock", "scrolllock"

local full_mode_key = "numlock"   ---numlock lamp on,recoil is full_mode.
local mode_switch_key = "capslock"
local lighton_key = "scrolllock"  ---start script,scrolllock lamp will be on.close script ,scrolllock lamp will be off.

--- fastloot setting---
--- Press fast_loot_key and click Left mouse button ---

local fastloot = false ---if you don't need it, you can close it by true to false.
local fast_loot_key = "rshift"
local move = 80 ----1920*1080

--- Your Sensitivity in Game

local vertical_sensitivity = 1 --- default is 0.7
local target_sensitivity = 50 --- default is 50.0
local scope_sensitivity = 50 --- default is 50.0
local scope4x_sensitivity = 50 --- default is 50.0

---- function ----
-- if auto_mode = true ,the guns need to switch automatic shooting mode,except m16 single.

local auto_mode = true

-- you can close these by true to false

local hold_breath_mode = true
local full_mode = true

---- Obfs setting
---- Two firing time intervals = weapon_speed * interval_ratio * ( 1 + random_seed * ( 0 ~ 1))
local weapon_speed_mode = false
-- local obfs_mode = false
local obfs_mode = false
local interval_ratio = 0.75
local random_seed = 1

--------------------------------------------------------------------------
----------------        Recoil Table        ------------------------------
---------------- You can fix the value here ------------------------------
--------------------------------------------------------------------------
--- recoil times
--- if the Recoil compensation is Large or small，You can modify the value of all_recoil_Times or recoil_table{times}
local all_recoil_times = 1

local recoil_table = {}

recoil_table["ump9"] = {
    basic={33.5,19.2,30.5,35.7,39.3, 39.0,38.7,40.2,41.8,44.0, 43.8,43.8,46.5,44.5,47.5},
    basictimes = 1.05,

    full={33.5,19.2,30.5,35.7,39.3, 39.0,38.7,40.2,41.8,44.0, 43.8,43.8,46.5,44.5,47.5},
    fulltimes = 1.05*0.75,



    quadruple={28,30,30,30,37,30,31,36,37,37,37,40,40,39,39,41,41,42,44,42,43,40,41,44,40,40,41,42,43},
    quadrupletimes = 4*0.963,

    fullof4x={28,30,30,30,37,30,31,36,37,37,37,40,40,39,39,41,41,42,44,42,43,40,41,44,40,40,41,42,43},
    fullof4xtimes = 4*1.0*0.75,

    speed = 100,



}

recoil_table["akm"] = {
    basic={61.3,41.2,47.5,51.0,54.5, 64.0,67.5,69.0,70.5,71.9, 71.5,73.6,79.3,79.3,81.6 ,80},
    basictimes = 1,
    full={28,30,30,30,37,30,31,36,37,37,37,40,40,39,39,41,41,42,44,42,43,40,41,44,40,40,41,42,43},

    fulltimes = 1.0*0.75,


    holdbreathtimes = 1.25,



    quadruple={28,30,30,30,37,30,31,36,37,37,37,40,40,39,39,41,41,42,44,42,43,40,41,44,40,40,41,42,43},

    quadrupletimes = 4*0.963,



    fullof4x={28,30,30,30,37,30,31,36,37,37,37,40,40,39,39,41,41,42,44,42,43,40,41,44,40,40,41,42,43},

    fullof4xtimes = 4*0.963*0.75,



    speed = 100,

}

recoil_table["m16a4"] = {
    basic={47,35,38,44,58,61,70,67,73,74,72,69,72,71,72,70,72,70,69,71},
    basictimes = 1.15,

    full={47,35,38,44,58,61,70,67,73,74,72,69,72,71,72,70,72,70,69,71},
    fulltimes = 1.15*0.75,

    holdbreathtimes = 1.25,

    quadruple={47,35,38,44,58,61,70,67,73,74,72,69,72,71,72,70,72,70,69,71},
    quadrupletimes = 1.15*4,

    fullof4x={47,35,38,44,58,61,70,67,73,74,72,69,72,71,72,70,72,70,69,71},
    fullof4xtimes = 4*1.15*0.75,

    speed = 80,
}

recoil_table["m416"] = {
    basic={49,37,38,39,43,46,47,47,48,49,50,49,55,56,58,60},
    basictimes = 1.05,

    full={49,37,38,39,43,46,47,47,48,49,50,49,55,56,58,60},
    fulltimes = 1.05*0.75,

    holdbreathtimes = 1.25,

    quadruple={49,37,38,39,43,46,47,47,48,49,50,49,55,56,58,60},
    quadrupletimes = 4*1.05,

    fullof4x={49,37,38,39,43,46,47,47,48,49,50,49,55,56,58,60},
    fullof4xtimes = 4*1.05*0.75,

    speed = 90,
}

recoil_table["scarl"] = {
    basic={44,28,32,40,44, 45,48,48,46,53, 54,56,58,57,56, 62},
    basictimes = 0.89,

    full={44,28,32,40,44, 45,48,48,46,53, 54,56,58,57,56, 62},
    fulltimes = 0.89*0.75,

    holdbreathtimes = 1.25,

    quadruple={44,28,32,40,44, 45,48,48,46,53, 54,56,58,57,56, 62},
    quadrupletimes = 4*0.89,

    fullof4x={44,28,32,40,44, 45,48,48,46,53, 54,56,58,57,56, 62},
    fullof4xtimes = 4*0.89*0.75,

    speed = 100,
}

recoil_table["uzi"] = {
    basic={18,18,18,19,19,21,24,24,30,26,30,30,34,34,38},
    basictimes = 1.7,

    full={18,18,18,19,19,21,24,24,30,26,30,30,34,34,38},
    fulltimes = 1.7*0.75,

    holdbreathtimes = 1.25,

    quadruple={18,18,18,19,19,21,24,24,30,26,30,30,34,34,38},
    quadrupletimes = 1.7,

    fullof4x={18,18,18,19,19,21,24,24,30,26,30,30,34,34,38},
    fullof4xtimes = 1.7*0.75,

    speed = 48,
}
 recoil_table["qbz"] = {
     basic={52.0,25.0,28.7,38.2,42.4, 44.0,46.0,46.0,45.6,45.1, 48.0,51.3,52.0,54.0,56.0, 59},
     basictimes = 1.05,
     full={51.2,24.5,28.7,38.2,42.4, 43.3,45.2,45.2,45.6,45.1, 48.0,50.3,51.0,53.0,55.0},
     fulltimes = 1*0.75,
     quadruple={51.2,24.5,28.7,38.2,42.4, 43.3,45.2,45.2,45.6,45.1, 48.0,50.3,51.0,53.0,55.0},
     quadrupletimes = 4*1,
     fullof4x={51.2,24.5,28.7,38.2,42.4, 43.3,45.2,45.2,45.6,45.1, 48.0,50.3,51.0,53.0,55.0},
     fullof4xtimes = 4*1*0.59,
     speed = 90,
     maxbullets = 40,
     holdbreathtimes = 1.25,
     fullholdbreathtimes = 1.25,
 }
 
recoil_table["none"] = {
    basic={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    basictimes = 1,

    full={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    fulltimes = 1,

    holdbreathtimes = 1,

    quadruple={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    quadrupletimes = 1,

    fullof4x={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    fullof4xtimes = 1,

    speed = 60,
}


--------------------------------------------------------------------------
----------------          Function          ------------------------------
--------------------------------------------------------------------------


function convert_sens(unconvertedSens)
    return 0.002 * math.pow(10, unconvertedSens / 50)
end

function calc_sens_scale(sensitivity)
    return convert_sens(sensitivity)/convert_sens(50)
end

local target_scale = calc_sens_scale(target_sensitivity)
local scope_scale = calc_sens_scale(scope_sensitivity)
local scope4x_scale = calc_sens_scale(scope4x_sensitivity)

function recoil_mode()
    if not IsKeyLockOn(mode_switch_key) then
        if IsKeyLockOn(full_mode_key) and full_mode then
	       return "full";
		   else
		   return "basic";
        end
    end

    if IsKeyLockOn(mode_switch_key) then
        if IsKeyLockOn(full_mode_key) and full_mode then
		   return "fullof4x"
		   else
		   return "quadruple"
        end
    end
end

function recoil_value(_weapon,_duration)
    local _mode = recoil_mode()
    local step = (math.floor(_duration/100)) + 1
    if step > #recoil_table[_weapon][_mode] then
        step = #recoil_table[_weapon][_mode]
    end

    local weapon_recoil = recoil_table[_weapon][_mode][step]
    -- OutputLogMessage("weapon_recoil = %s\n", weapon_recoil)

    local weapon_speed = 30
    if weapon_speed_mode then
        weapon_speed = recoil_table[_weapon]["speed"]
    end
    -- OutputLogMessage("weapon_speed = %s\n", weapon_speed)

    local weapon_basictimes = recoil_table[_weapon]["basictimes"]
    local weapon_fulltimes = recoil_table[_weapon]["fulltimes"]
    local weapon_quadrupletimes = recoil_table[_weapon]["quadrupletimes"]
    local weapon_fullof4xtimes = recoil_table[_weapon]["fullof4xtimes"]
    local weapon_holdbreathtimes = recoil_table[_weapon]["holdbreathtimes"]
    local weapon_intervals = weapon_speed

    if obfs_mode then
        local coefficient = interval_ratio * ( 1 + random_seed * math.random())
        weapon_intervals = math.floor(coefficient  * weapon_speed)
    end
    -- OutputLogMessage("weapon_intervals = %s\n", weapon_intervals)

    recoil_recovery = weapon_recoil * weapon_intervals / 100
    recoil_times = all_recoil_times * 0.7 / vertical_sensitivity

    if recoil_mode() == "basic" and not IsModifierPressed(hold_breath_key) then
    recoil_recovery = recoil_recovery * recoil_times * weapon_basictimes
    end
    if recoil_mode() == "basic" and hold_breath_mode and IsModifierPressed(hold_breath_key) then
    recoil_recovery = recoil_recovery * weapon_holdbreathtimes * recoil_times * weapon_basictimes
    end

    if recoil_mode() == "full" and not IsModifierPressed(hold_breath_key) then
    recoil_recovery = recoil_recovery * recoil_times * weapon_fulltimes
    end
    if recoil_mode() == "full" and hold_breath_mode and IsModifierPressed(hold_breath_key) then
    recoil_recovery = recoil_recovery * weapon_holdbreathtimes * recoil_times * weapon_fulltimes
    end

    if recoil_mode() == "quadruple" then
    recoil_recovery = recoil_recovery * recoil_times * weapon_quadrupletimes
    end

    if recoil_mode() == "fullof4x" then
    recoil_recovery = recoil_recovery * recoil_times * weapon_fullof4xtimes
    end

    -- issues/3
    if IsMouseButtonPressed(2) then
        recoil_recovery = recoil_recovery / target_scale
    elseif recoil_mode() == "basic" then
        recoil_recovery = recoil_recovery / scope_scale
    elseif recoil_mode() == "full" then
        recoil_recovery = recoil_recovery / scope_scale
    elseif recoil_mode() == "quadruple" then
        recoil_recovery = recoil_recovery / scope4x_scale
    elseif recoil_mode() == "fullof4x" then
        recoil_recovery = recoil_recovery / scope4x_scale
    end

    return weapon_intervals,recoil_recovery
end


--------------------------------------------------------------------------
----------------          OnEvent          ------------------------------
--------------------------------------------------------------------------
local aim_mode = false
local isSitting = false
local laststartfiringtime = 0

function OnEvent(event, arg)
    OutputLogMessage("event = %s, arg = %d\n", event, arg)

	

    if (event == "PROFILE_ACTIVATED") then
        EnablePrimaryMouseButtonEvents(true)
    elseif event == "PROFILE_DEACTIVATED" then
        current_weapon = "ump9"
        shoot_duration = 0.0
        ReleaseKey(fire_key)
        ReleaseMouseButton(1)
    end

	---enable recoil only on "mouse left and right" pressed at the same time
	if(event == "MOUSE_BUTTON_PRESSED" and arg == 2) then
		aim_mode = true --marked aimed flag (with holding right mouse key)

		---prevent shit down with left shift - lshift - key
		if not IsModifierPressed("lshift") then
			--PressKey("c")
			isSitting = true
		end
	
	elseif(event == "MOUSE_BUTTON_RELEASED" and arg == 2) then
		aim_mode = false
		--ReleaseKey("c")
		isSitting = false
	end

	if(event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
		--ReleaseKey("c")
		isSitting = false
	end

	--get the first time the fire button pressed
	if(event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
		laststartfiringtime = GetRunningTime();

				---sniper fire, if left shift sit down right after the fire
					if (IsModifierPressed("lshift") and isSitting == false) then
						PressKey("c")
						PressKey("q")
						isSitting = true
					end
	end
	if(event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
		ReleaseKey("q")	
		ReleaseKey("c")
		ReleaseKey("z")
	end

	if(event == "MOUSE_BUTTON_PRESSED" and arg == 2) then
		laststartfiringtime = GetRunningTime();

		if not (IsModifierPressed("lshift") ) then

			PressKey("e")	

		end
	end
	if(event == "MOUSE_BUTTON_RELEASED" and arg == 2) then
		ReleaseKey("e")	
	end




    if (event == "MOUSE_BUTTON_PRESSED" and arg == set_off_key)
    or (event == "G_PRESSED" and arg == set_off_gkey) then
        current_weapon = "none"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == akm_key)
    or (event == "G_PRESSED" and arg == akm_gkey) then
        current_weapon = "akm"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m16a4_key)	
    or (event == "G_PRESSED" and arg == m16a4_gkey) then
        current_weapon = "m16a4"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m416_key)
    or (event == "G_PRESSED" and arg == m416_gkey) then
        current_weapon = "m416"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == ump9_key)
    or (event == "G_PRESSED" and arg == ump9_gkey) then
        current_weapon = "ump9"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == uzi_key)
    or (event == "G_PRESSED" and arg == uzi_gkey) then
        current_weapon = "uzi"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == scarl_key)
    or (event == "G_PRESSED" and arg == scarl_gkey) then
        current_weapon = "scarl"
    elseif (event == "MOUSE_BUTTON_PRESSED" and (aim_mode == true) and arg == 1 and not IsModifierPressed(fast_loot_key)) then
        -- button 1 : Shoot
        if ((current_weapon == "none") or IsModifierPressed(ignore_key)) then
            PressKey(fire_key)
            repeat
                
				--OutputLogMessage("event 0")
			

					--[[
					Try to e after 600ms from the fire begin, return to normal after 1500ms from the fire start
					--]]				

					if( (GetRunningTime() - laststartfiringtime) > 500 ) then
						PressKey("c")
					end 
	
					if( (GetRunningTime() - laststartfiringtime) > 1000 ) then						
						PressKey("q")
					end

					if( (GetRunningTime() - laststartfiringtime) > 2500 ) then
						PressKey("c")
						ReleaseKey("q")						
					end 

					if( (GetRunningTime() - laststartfiringtime) > 2500 ) then
						PressKey("z")
					end 

					Sleep(30)

            until not IsMouseButtonPressed(1)
            ReleaseKey(fire_key)
        elseif((current_weapon == "m16a4") and not IsModifierPressed(ignore_key)) then
            local shoot_duration = 0.0
            repeat
                local intervals,recovery = recoil_value(current_weapon,shoot_duration)
                PressAndReleaseKey(fire_key)
                MoveMouseRelative(0, recovery )
                Sleep(intervals)
                shoot_duration = shoot_duration + intervals

				-- OutputLogMessage("event 1")
            until not IsMouseButtonPressed(1)
        else
            if auto_mode then
                PressKey(fire_key)
                local shoot_duration = 0.0
                repeat
                local intervals,recovery = recoil_value(current_weapon,shoot_duration)
                MoveMouseRelative(0, recovery )
                Sleep(intervals)
                shoot_duration = shoot_duration + intervals

		
				-- OutputLogMessage("event 2")
		       until not IsMouseButtonPressed(1)
            else
                local shoot_duration = 0.0
                repeat
                local intervals,recovery = recoil_value(current_weapon,shoot_duration)
                PressAndReleaseKey(fire_key)
                MoveMouseRelative(0, recovery )
                Sleep(intervals)
                shoot_duration = shoot_duration + intervals

				-- OutputLogMessage("event 3")

                until not IsMouseButtonPressed(1)
            end
        end
    elseif (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
        ReleaseKey(fire_key)
    end


		 

    while (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and IsModifierPressed(fast_loot_key) and fastloot) do
		--OutputLogMessage("event 4")
        ReleaseMouseButton(1)
        PressMouseButton(1)
        for i = 0, 14 do
        MoveMouseRelative(move, 0)
        Sleep(2)
        end
        ReleaseMouseButton(1)
        for i = 0, 14 do
        MoveMouseRelative(-move, 0)
        Sleep(2)
        end
        Sleep(10)
    end

	

    if (current_weapon == "none") then
        if IsKeyLockOn(lighton_key) then
        PressAndReleaseKey(lighton_key)
        end
    else
        if not IsKeyLockOn(lighton_key) then
        PressAndReleaseKey(lighton_key)
        end
    end
end
