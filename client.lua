Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        if vehicle and IsEntityInAir(vehicle) then
            DisableControlAction(0, 59) -- disables left/right control
            DisableControlAction(0, 60) -- disables up/down control
        end
    end
end)
