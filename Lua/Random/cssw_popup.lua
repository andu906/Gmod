local addonName = "CSSW (Ratbase 2)"

local workshopID = " "--put the id of cssw workshop



-- dis happen when player enters game

hook.Add("InitPostEntity", "CSSW_Migration_Spam", function()

    timer.Simple(5, function()

        if not IsValid(LocalPlayer()) then return end



        local frame = vgui.Create("DFrame")

        frame:SetSize(450, 220)

        frame:Center()

        frame:SetTitle(" !!! LEGACY ADDON ALERT !!! ")

        frame:SetVisible(true)

        frame:SetDraggable(false)

        frame:ShowCloseButton(true)

        frame:MakePopup()



        frame.Paint = function(self, w, h)

            draw.RoundedBox(0, 0, 0, w, h, Color(40, 0, 0, 245))

            surface.SetDrawColor(255, 0, 0, 255)

            surface.DrawOutlinedRect(0, 0, w, h, 2)

        end



        local warn = vgui.Create("DLabel", frame)

        warn:Dock(TOP)

        warn:SetHeight(120)

        warn:SetText("RATBASE IS OUTDATED\n\nYou are using an old version.\nCSSW is the new, improved replacement.\n\nPlease subscribe to the new version\nand uninstall this old one!")

        warn:SetFont("DermaDefaultBold")

        warn:SetContentAlignment(5)

        warn:SetTextColor(Color(255, 255, 255))



        local btn = vgui.Create("DButton", frame)

        btn:SetText("CLICK HERE TO GET CSSW")

        btn:SetSize(250, 45)

        btn:SetPos(100, 150)

        btn:SetTextColor(Color(255, 255, 255))

        

        btn.Paint = function(self, w, h)

            local col = self:IsHovered() and Color(255, 50, 50) or Color(200, 0, 0)

            draw.RoundedBox(4, 0, 0, w, h, col)

        end



        btn.DoClick = function()

            gui.OpenURL("https://steamcommunity.com/sharedfiles/filedetails/?id=" .. workshopID)

        end

    end)

end)
