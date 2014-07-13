; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "AVRDUDESS"
#define MyAppVersion "2.3"
#define MyAppPublisher "Zak Kemble"
#define MyAppURL "http://zakkemble.co.uk/"
#define MyAppExeName "avrdudess.exe"
#define MyAppContact "contact@zakkemble.co.uk"
#define MyAppCopyright "Copyright � 2014 Zak Kemble"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)  
PrivilegesRequired=admin
AppId={{B6EAF03F-3DB3-4170-A4B0-B7007AAD6D0C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppContact={#MyAppContact}
AppCopyright={#MyAppCopyright}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=License.txt
;InfoAfterFile=Readme.txt
OutputDir=./
OutputBaseFilename=setup-{#MyAppName}-{#MyAppVersion}
Compression=lzma2/max
SolidCompression=yes
VersionInfoVersion={#MyAppVersion}
WizardSmallImageFile=wizardsmall.bmp
UninstallDisplayIcon={app}\{#MyAppExeName}
               
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "avrdudess.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "avrdude.conf"; DestDir: "{app}"; Flags: ignoreversion
Source: "avrdude.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "avr-size.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Changelog.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "Credits.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "License.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "Readme.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "TODO.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "config.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "presets.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "bits.xml"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
