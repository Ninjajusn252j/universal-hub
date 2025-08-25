local Key = "Imposiblehahaha"

local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/Rayfield/Rayfield/main/source"))()

local Window = Rayfield:CreateWindow({
    Name = "Acceso Requerido",
    LoadingTitle = "Verificando...",
    LoadingSubtitle = "Por favor, espera.",
    ConfigurationSaving = {
        Enabled = false
    },
    Discord = {
        Enabled = true,
        Invite = _G.Config.GroupLink
    },
    KeySystem = true,
    KeySettings = {
        Title = "Sistema de Claves",
        Subtitle = "Necesitas una clave para usar el script.",
        Note = "Únete a nuestro grupo de Roblox que tienes copiado en el portapapeles para obtenerla.",
        FileName = "RayfieldHubKeyFile",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {Key}
    }
})

local KeyTab = Window:CreateTab("Clave", 4483345998)
local KeySection = KeyTab:CreateSection("Obtener la clave")

Rayfield:CreateWindow({
    Name = "Acceso Requerido",
    Transparency = 0.5
})

KeySection:CreateButton({
    Name = "Obtener Enlace del Grupo",
    Callback = function()
        if _G and _G.Config and _G.Config.GroupLink then
            setclipboard(_G.Config.GroupLink)
            Rayfield:Notify({
                Title = "Enlace Copiado",
                Content = "El enlace del grupo ha sido copiado a tu portapapeles.",
                Duration = 5
            })
        else
            Rayfield:Notify({
                Title = "Error",
                Content = "No se pudo obtener el enlace del grupo. Asegúrate de haber cargado el script principal.",
                Duration = 5
            })
        end
    end,
})
