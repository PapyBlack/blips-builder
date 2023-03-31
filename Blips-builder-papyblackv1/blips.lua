local blips = {
    -- Exemple {title="", colour=, id=, x=, y=, z=},
   {title="Spa", colour=3, id=197, x = 592.77, y = 2758.66, z = 43.44},
   {title="Dynasty8", colour=81, id=355, x = -704.64, y = 268.76, z = 87.54}
  }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


---- |-| By PAPYBLACK |-| ----
