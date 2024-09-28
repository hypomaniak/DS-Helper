; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "DownloadStation Helper"
#define MyAppVersion "1.25"
#define MyAppPublisher "hypomaniak"
#define MyAppURL "https://github.com/hypomaniak/DS-Helper/"
#define MyAppExeName "DS Helper.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{127C91B7-08B0-4484-81C2-2196140705F1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir="..\_setup"
OutputBaseFilename=DS Helper Setup
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "..\Release\DS Helper.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\LICENSE.txt"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent unchecked

[Registry]
Root: HKCU; Subkey: "Software\DS Helper"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DS Helper\Pathes"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\DS Helper\Pathes"; ValueType: string; ValueName: "P1"; ValueData: "/video"; Flags: createvalueifdoesntexist uninsdeletevalue
Root: HKCU; Subkey: "Software\DS Helper\Pathes"; ValueType: string; ValueName: "P2"; ValueData: "/music"; Flags: createvalueifdoesntexist uninsdeletevalue
Root: HKCU; Subkey: "Software\DS Helper\Pathes"; ValueType: string; ValueName: "P3"; ValueData: "/photo"; Flags: createvalueifdoesntexist uninsdeletevalue

Root: HKCR; Subkey: "Applications\DS Helper.exe\shell\open\command"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Applications\DS Helper.exe\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\DS Helper.exe"" %1"; Flags: createvalueifdoesntexist uninsdeletevalue

Root: HKCR; Subkey: "SOFTWARE\Classes\.torrent\DS Helper\shell\open\command"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SOFTWARE\Classes\.torrent\DS Helper.exe\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\DS Helper.exe"" %1"; Flags: createvalueifdoesntexist uninsdeletevalue

Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.torrent\OpenWithList";
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.torrent\OpenWithProgids"; ValueType: dword; ValueName: "DS Helper"; ValueData: "0"; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.torrent\OpenWithList"; ValueType: string; ValueName: ""; ValueData: """{app}\DS Helper.exe"" %1"; Flags: createvalueifdoesntexist uninsclearvalue

Root: HKCU; Subkey: "Software\Classes\DS Helper\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\DS Helper.exe"" %1"; Flags: createvalueifdoesntexist uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\.torrent"; ValueType: string; ValueName: ""; ValueData: "DS Helper"; Flags: createvalueifdoesntexist uninsclearvalue

Root: HKCR; Subkey: "magnet"; Flags: uninsdeletekey
Root: HKCR; Subkey: "magnet\DefaultIcon";
Root: HKCR; Subkey: "magnet\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\DS Helper.exe,1"; Flags: createvalueifdoesntexist uninsclearvalue
Root: HKCR; Subkey: "magnet"; ValueType: string; ValueName: "URL Protocol"; ValueData: ""; Flags: createvalueifdoesntexist uninsclearvalue
Root: HKCR; Subkey: "magnet"; ValueType: string; ValueName: ""; ValueData: "URL:Magnet Link"; Flags: createvalueifdoesntexist uninsclearvalue
Root: HKCR; Subkey: "magnet\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\DS Helper.exe"" %1"; Flags: createvalueifdoesntexist uninsclearvalue
