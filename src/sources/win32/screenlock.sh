#/usr/bin/env kmd
exec reg query "HKCU\Control Panel\Desktop" /v ScreenSaveActive
extract REG_SZ\s+(\S+)
defaultTo 0
save ssActive

exec reg query "HKCU\Control Panel\Desktop" /v ScreenSaverIsSecure
extract REG_SZ\s+(\S+)
defaultTo 0
save ssSecure

exec reg query "HKCU\Control Panel\Desktop" /v ScreenSaveTimeOut
extract REG_SZ\s+(\S+)
parseInt 10
defaultTo 0
save screenSaverTimeout
