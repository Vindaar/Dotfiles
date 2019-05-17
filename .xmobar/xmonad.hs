import XMonad
import XMonad.Util.Run
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops    -- (ewmh)
import XMonad.Hooks.ManageHelpers
import System.IO
import XMonad.Util.EZConfig(additionalKeys)

main = do
    xmproc <- spawnPipe "xmobar /home/basti/.xmobarrc"
    xmonad $ docks $ defaultConfig
        { manageHook = composeAll [
            manageDocks,
            isFullscreen --> doFullFloat,
            className =? "mpv" --> doFloat,
            manageHook defaultConfig
            ]
        , layoutHook = avoidStruts $ layoutHook defaultConfig
        , logHook = dynamicLogWithPP xmobarPP
                    { ppOutput = hPutStrLn xmproc
                    , ppTitle = xmobarColor "green" "" . shorten 50
                    }
        , modMask = mod4Mask
        -- , terminal = "xfce4-terminal"
        } `additionalKeys`
        [ ((mod4Mask .|. controlMask, xK_l), spawn "slock")
        , ((mod4Mask, xK_Return), spawn "xfce4-terminal --hide-menubar")
        , ((mod4Mask, xK_q), spawn "xmonad --recompile && xmonad --restart")
        ]
