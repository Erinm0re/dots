#!/usr/bin/python
import rofi_menu

T = "code"

class Lutris(rofi_menu.Menu):
    prompt = "configs"
    items = [
        rofi_menu.BackItem(),
        rofi_menu.ShellItem("Battle.net",  "lutris battlenet"),
    ]


class LogoutMenu(rofi_menu.Menu):
    prompt = "Logout"
    items = [
        rofi_menu.ShellItem("Yes", "i3-msg exit", flags={rofi_menu.FLAG_STYLE_URGENT}),
        rofi_menu.ExitItem("No", flags={rofi_menu.FLAG_STYLE_ACTIVE}),
    ]

class rebootMenu(rofi_menu.Menu):
    prompt = "Reboot"
    items = [
        rofi_menu.ShellItem("Yes", "reboot", flags={rofi_menu.FLAG_STYLE_URGENT}),
        rofi_menu.ExitItem("No", flags={rofi_menu.FLAG_STYLE_ACTIVE}),
    ]

class poweroffMenu(rofi_menu.Menu):
    prompt = "Shutdown"
    items = [
        rofi_menu.ShellItem("Yes", "poweroff", flags={rofi_menu.FLAG_STYLE_URGENT}),
        rofi_menu.ExitItem("No", flags={rofi_menu.FLAG_STYLE_ACTIVE}),
    ]



class MainMenu(rofi_menu.Menu):
    prompt = "menu"
    items = [
        rofi_menu.ShellItem("Configs >", "dm-confedit"),
        rofi_menu.NestedMenu("Lutris >", Lutris()),
        rofi_menu.ShellItem("Screenshot >", "dm-maim"),
        rofi_menu.ShellItem("Search >", "dm-websearch"),
        rofi_menu.ShellItem("Manuals >", "dm-man"),
        rofi_menu.ShellItem("Notes >", "dm-note"),
        rofi_menu.ShellItem("Lock screen", "i3lock -i ~/.config/i3/bg.png"),
        rofi_menu.ShellItem("Sleep", "systemctl suspend"),
        rofi_menu.NestedMenu("Logout", LogoutMenu()),
        rofi_menu.NestedMenu("Reboot", rebootMenu()),
        rofi_menu.NestedMenu("Shutdown", poweroffMenu()),
    ]


if __name__ == "__main__":
    rofi_menu.run(MainMenu(), rofi_version="1.6")  # change to 1.5 if you use older rofi versio