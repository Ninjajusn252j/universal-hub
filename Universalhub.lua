
local Key = "Imposiblehahaha"

-- Cargamos la librería de Rayfield UI.
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- Creamos la ventana principal.
local Window = Rayfield:CreateWindow({
    Name = "Acceso Requerido",
    LoadingTitle = "Verificando...",
    LoadingSubtitle = "Por favor, espera.",
    ConfigurationSaving = {
        Enabled = false,
    },
    Discord = {
        Enabled = false
    },
    -- Habilitamos y configuramos el sistema de llaves de Rayfield.
    KeySystem = true,
    KeySettings = {
        Title = "Sistema de Claves",
        Subtitle = "Necesitas una clave para usar el script.",
        Note = "Únete a nuestro grupo de Roblox para obtenerla.",
        FileName = "RayfieldHubKeyFile", -- Nombre del archivo donde se guardará la clave.
        SaveKey = true, -- Guarda la clave para que no tenga que ser ingresada de nuevo.
        GrabKeyFromSite = false,
        Key = {Key} -- La clave o claves que se aceptarán.
    }
})

-- La GUI para obtener la clave. Rayfield la genera automáticamente.
-- A continuación, el código para la lógica del botón "Obtener Clave".
local KeyTab = Window:CreateTab("Clave", 4483345998)
local KeySection = KeyTab:CreateSection("Obtener la clave")

-- Botón para copiar el enlace al portapapeles.
KeySection:CreateButton({
    Name = "Obtener Enlace del Grupo",
    Callback = function()
        setclipboard(_G.Config.GroupLink)
        Rayfield:Notify({
            Title = "Enlace Copiado",
            Content = "El enlace del grupo ha sido copiado a tu portapapeles ve al navegador y pegalo.",
            Duration = 5
        })
    end,
})
