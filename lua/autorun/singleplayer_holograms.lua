if SERVER then
    local ExtentionArray = {
        "acf",
        "bonecore2",
        "camera",
        "constraintcore",
        "effects",
        "file",
        "find",
        "holo",
        "holoanim",
        "http",
        "light",
        "playercore"
        "prop2mesh",
        "propcore",
        "ranger",
        "remoteupload",
        "serialization",
        "sound",
        "spritecore",
        "wiring",
        "xtrasound"
    }

    --Enable required extensions.
    for index, item in pairs(ExtentionArray) do
        RunConsoleCommand("wire_expression2_extension_enable",item)
    end

    --Dedicated defaults.
    RunConsoleCommand("wire_holograms_max","9999")
    RunConsoleCommand("wire_holograms_burst_amount","80")
    RunConsoleCommand("wire_holograms_burst_delay","1")
    RunConsoleCommand("wire_holograms_modelany","2")

    --Reload all expression2's so apply changes.
    RunConsoleCommand("wire_expression2_reload","")

    MsgC(Color(172,244,108),"SpHolos | ", Color(255,255,255),"Setup expression2 holograms for local use.\n")

    --Ensure user has all required files before loading into server.
    resource.AddWorkshop("")
end

if CLIENT then
    return
end
