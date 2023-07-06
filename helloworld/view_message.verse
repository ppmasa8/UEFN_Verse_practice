
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

# See https://dev.epicgames.com/documentation/en-us/uefn/create-your-own-device-in-verse for how to create a verse device.

# A Verse-authored creative device that can be placed in a level
view_message := class(creative_device):

    @editable
    Button : button_device = button_device{}

    @editable
    HUD : hud_message_device = hud_message_device{}

    # Runs when the device is started in a running game
    OnBegin<override>()<suspends>:void=
        Button.InteractedWithEvent.Subscribe(ShowMessage)

    ShowMessage(Player:agent):void=
        HUD.Show()
