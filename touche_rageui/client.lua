ESX = nil


Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(100)
    end
end)

--------------- Création du Menu / Sous Menu ---------------

RMenu.Add('ToToTv', 'main', RageUI.CreateMenu("Touche du serveur", "Touche du serveur"))
RMenu:Get('ToToTv', 'main'):SetRectangleBanner(0, 46, 255)

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('ToToTv', 'main'), true, true, true, function()

            RageUI.Separator("".."↓↓↓ ~g~Touche du serveur ~w~↓↓↓".."")

            RageUI.Button("~r~Inventaire", nil, {RightLabel = "F2"}, true, function(Hovered, Active)
            end)

            RageUI.Button("~r~Menu Interaction", nil, {RightLabel = "F5"}, true, function(Hovered, Active)
            end)

            RageUI.Button("~r~Administrateur", nil, {RightLabel = "F10"}, true, function(Hovered, Active)
            end)

            RageUI.Button("~r~Menu Illegal", nil, {RightLabel = "F2"}, true, function(Hovered, Active)
            end)
        end, function()
        end)

        Citizen.Wait(0)
    end
end)

--------------- Touche Du menu ---------------
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 288) then
            RageUI.Visible(RMenu:Get('ToToTv', 'main'), not RageUI.Visible(RMenu:Get('ToToTv', 'main')))
        end
    end
end)