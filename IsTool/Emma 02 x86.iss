; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Emma 02
AppVerName=Emma 02 - V1.26.2
AppVersion=1.26
AppPublisher=Marcel van Tongeren
DefaultDirName={pf}\Emma 02
DefaultGroupName=Emma 02
OutputDir=x86
OutputBaseFilename=Emma_02_x86_setup_v1.26.2
Compression=lzma
SolidCompression=true
SetupIconFile=..\images\app.ico
UninstallDisplayIcon={app}\images\app.ico
DisableDirPage=false
FlatComponentsList=false
InfoBeforeFile=..\copyright.rtf
WizardImageBackColor=clWhite
WizardImageStretch=true
WizardImageFile=emma 02 large.bmp
WizardSmallImageFile=emma 02.bmp
ShowLanguageDialog=no
AppPublisherURL=http://www.emma02.hobby-site.com/
AppSupportURL=http://www.comxclub.hobby-site.com/forum/forumdisplay.php?fid=4
AppUpdatesURL=http://www.emma02.hobby-site.com/index_change_log.html

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: vcredist_x86.exe; DestDir: {tmp}; Flags: deleteafterinstall; Components: MAIN
Source: ..\Win32\Release\Emma 02.exe; DestDir: {app}; Components: MAIN; Tasks: ; Languages: 
Source: ..\emma_02.htb; DestDir: {app}; Components: MAIN
Source: ..\about.xrc; DestDir: {app}; Components: MAIN
Source: ..\cassette.xrc; DestDir: {app}; Components: MAIN
Source: ..\colour.xrc; DestDir: {app}; Components: MAIN
Source: ..\configuration.xrc; DestDir: {app}; Components: MAIN
Source: ..\datadir.xrc; DestDir: {app}; Components: MAIN
Source: ..\diag.xrc; DestDir: {app}; Components: MAIN
Source: ..\eprom.xrc; DestDir: {app}; Components: MAIN
Source: ..\functionkey.xrc; DestDir: {app}; Components: MAIN
Source: ..\keymap.xrc; DestDir: {app}; Components: MAIN
Source: ..\keymap_tmc.xrc; DestDir: {app}; Components: MAIN
Source: ..\main.xrc; DestDir: {app}; Components: MAIN
Source: ..\menu_Cas_Mem.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuComx.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuCosmicos.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuElf.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuElf2K.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuMembership.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuMS2000.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuPecom.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuTmc600.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuVelf.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuVip.xrc; DestDir: {app}; Components: MAIN
Source: ..\ports.xrc; DestDir: {app}; Components: MAIN
Source: ..\sb.xrc; DestDir: {app}; Components: MAIN
Source: ..\splash.xrc; DestDir: {app}; Components: MAIN
Source: ..\vt.xrc; DestDir: {app}; Components: MAIN
Source: ..\..\SDL2-2.0.5\lib\x86\SDL2.dll; DestDir: {app}; Components: MAIN
Source: ..\..\libserialport\Win32\lib\libserialport.dll; DestDir: {app}; Components: MAIN
Source: ..\OpenSSL - LICENSE; DestDir: {app}; Components: MAIN
Source: ..\Quest_license.txt; DestDir: {app}; Components: MAIN
Source: ..\Quest_CC_Lic.jpg; DestDir: {app}; Components: MAIN
Source: ..\README-SDL.txt; DestDir: {app}; Components: MAIN
Source: ..\LGPL.txt; DestDir: {app}; Components: MAIN
Source: ..\COPYING - curl; DestDir: {app}; Components: MAIN
Source: ..\data\data dir for portable mode.txt; DestDir: {app}\data; Components: MAIN
Source: ..\Configurations Windows\Cidelsa\*.*; DestDir: {app}\Configurations\Cidelsa; Components: MAIN
Source: ..\Configurations Windows\Comx\*.*; DestDir: {app}\Configurations\Comx; Components: MAIN
Source: ..\Configurations Windows\Cosmicos\*.*; DestDir: {app}\Configurations\Cosmicos; Components: MAIN
Source: ..\Configurations Windows\CoinArcade\*.*; DestDir: {app}\Configurations\CoinArcade; Components: MAIN
Source: ..\Configurations Windows\Elf\*.*; DestDir: {app}\Configurations\Elf; Components: MAIN
Source: ..\Configurations Windows\Elf2K\*.*; DestDir: {app}\Configurations\Elf2K; Components: MAIN
Source: ..\Configurations Windows\Eti\*.*; DestDir: {app}\Configurations\Eti; Components: MAIN
Source: ..\Configurations Windows\MCDS\*.*; DestDir: {app}\Configurations\MCDS; Components: MAIN
Source: ..\Configurations Windows\Membership\*.*; DestDir: {app}\Configurations\Membership; Components: MAIN
Source: ..\Configurations Windows\Microtutor\*.*; DestDir: {app}\Configurations\Microtutor; Components: MAIN
Source: ..\Configurations Windows\MS2000\*.*; DestDir: {app}\Configurations\MS2000; Components: MAIN
Source: ..\Configurations Windows\Nano\*.*; DestDir: {app}\Configurations\Nano; Components: MAIN
Source: ..\Configurations Windows\Pecom\*.*; DestDir: {app}\Configurations\Pecom; Components: MAIN
Source: ..\Configurations Windows\Studio2\*.*; DestDir: {app}\Configurations\Studio2; Components: MAIN
Source: ..\Configurations Windows\StudioIV\*.*; DestDir: {app}\Configurations\StudioIV; Components: MAIN
Source: ..\Configurations Windows\TMC600\*.*; DestDir: {app}\Configurations\TMC600; Components: MAIN
Source: ..\Configurations Windows\TMC1800\*.*; DestDir: {app}\Configurations\TMC1800; Components: MAIN
Source: ..\Configurations Windows\TMC2000\*.*; DestDir: {app}\Configurations\TMC2000; Components: MAIN
Source: ..\Configurations Windows\Velf\*.*; DestDir: {app}\Configurations\Velf; Components: MAIN
Source: ..\Configurations Windows\Victory\*.*; DestDir: {app}\Configurations\Victory; Components: MAIN
Source: ..\Configurations Windows\Vip\*.*; DestDir: {app}\Configurations\Vip; Components: MAIN
Source: ..\Configurations Windows\VipII\*.*; DestDir: {app}\Configurations\VipII; Components: MAIN
Source: ..\Configurations Windows\Visicom\*.*; DestDir: {app}\Configurations\Visicom; Components: MAIN
Source: ..\data\keydefinition.txt; DestDir: {app}\data; Components: MAIN
Source: ..\data\keydefinition_studio.txt; DestDir: {app}\data; Components: MAIN
Source: ..\data\multi-cart.txt; DestDir: {app}\data; Components: MAIN
Source: ..\data\us.ini; DestDir: {app}\data; Components: MAIN
Source: ..\data\swedish.ini; DestDir: {app}\data; Components: MAIN
Source: ..\data\german.ini; DestDir: {app}\data; Components: MAIN
Source: ..\data\dutch.ini; DestDir: {app}\data; Components: MAIN
Source: ..\data\french.ini; DestDir: {app}\data; Components: MAIN
Source: ..\data\Comx\comx35.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\comx35.1.1.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\f&m.expansion.3.1.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\f&m.expansion.3.2.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\f&m.eprom.board.1.1.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\f&m.eprom.board.1.2.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\fdc.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\diag_pal1.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\diag_pal2.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\diag_pal2_v1.1.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\diag_ntsc1.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\diag_ntsc2.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\diag_ntsc2_v1.1.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\rs232.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\f&m.joycard.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\f&m.printer.1.2.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\printer.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\thermal.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\expansion.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\80column.1.0.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\80column.1.1.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\pl80.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\pl80.it.em.ou.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\pl80.tiny.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\usb_super.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\eprom_super.bin; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\Comx Key File Example.txt; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\Recall Basic.txt; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\Trainspotting.txt; DestDir: {app}\data\Comx; Components: MAIN
Source: ..\data\Comx\Usb FW Development\sb*.bin; DestDir: {app}\data\Comx\Usb FW; Components: MAIN
Source: ..\data\Comx\Usb FW Development\*.debug; DestDir: {app}\data\Comx\Usb FW; Components: MAIN
Source: ..\data\Comx\Usb FW\sb.config; DestDir: {app}\data\Comx\Usb FW; Components: MAIN
Source: ..\data\Comx\Demo\*.comx; DestDir: {app}\data\Comx\Demo; Components: MAIN
Source: ..\data\Comx\Spellen\*.comx; DestDir: {app}\data\Comx\Spellen; Components: MAIN
Source: ..\data\Comx\Programmas\*.comx; DestDir: {app}\data\Comx\Programmas; Components: MAIN
Source: ..\data\Comx\Educatief\*.comx; DestDir: {app}\data\Comx\Educatief; Components: MAIN
Source: ..\data\Comx\Games\*.comx; DestDir: {app}\data\Comx\Games; Components: MAIN
Source: ..\data\Comx\Programs\*.comx; DestDir: {app}\data\Comx\Programs; Components: MAIN
Source: ..\data\Comx\Educational\*.comx; DestDir: {app}\data\Comx\Educational; Components: MAIN
Source: ..\data\Comx\Talen - Languages\*.comx; DestDir: {app}\data\Comx\Talen - Languages; Components: MAIN
Source: ..\data\Comx\Hulpmiddelen - Utilities\*.comx; DestDir: {app}\data\Comx\Hulpmiddelen - Utilities; Components: MAIN
Source: ..\data\Comx\F&M Basic\*.comx; DestDir: {app}\data\Comx\F&M Basic; Components: MAIN
Source: ..\data\Comx\Plotter\*.comx; DestDir: {app}\data\Comx\Plotter; Components: MAIN
Source: ..\data\Comx\Disks\dos.1.4+f&m.disk.tools.img; DestDir: {app}\data\Comx\Disks; Components: MAIN
Source: ..\data\Comx\Disks\f&m-heijmans.sw.img; DestDir: {app}\data\Comx\Disks; Components: MAIN
Source: ..\data\Comx\Disks\games.img; DestDir: {app}\data\Comx\Disks; Components: MAIN
Source: ..\data\Comx\Disks\hit.it.img; DestDir: {app}\data\Comx\Disks; Components: MAIN
Source: ..\data\Comx\Disks\comxstar.img; DestDir: {app}\data\Comx\Disks; Components: MAIN
Source: ..\data\Comx\Disks\assembler.img; DestDir: {app}\data\Comx\Disks; Components: MAIN
Source: ..\data\Comx\Disks\plotter.img; DestDir: {app}\data\Comx\Disks; Components: MAIN
Source: ..\data\Comx\Disks\plotter-2.img; DestDir: {app}\data\Comx\Disks; Components: MAIN
Source: ..\data\Comx\F&M EPROM Switchboard\*.*; DestDir: {app}\data\Comx\F&M EPROM Switchboard; Components: MAIN
Source: ..\data\CoinArcade\*.*; DestDir: {app}\data\CoinArcade; Components: MAIN
Source: ..\data\Studio2\studio2.rom; DestDir: {app}\data\Studio2; Components: MAIN
Source: ..\data\Studio2\*.bin; DestDir: {app}\data\Studio2; Components: MAIN
Source: ..\data\Studio2\*.rom; DestDir: {app}\data\Studio2; Components: MAIN
Source: ..\data\Studio2\*.st2; DestDir: {app}\data\Studio2; Components: MAIN
Source: ..\data\Studio2\*.txt; DestDir: {app}\data\Studio2; Components: MAIN
Source: ..\data\Studio2\*.pdf; DestDir: {app}\data\Studio2; Components: MAIN
Source: ..\data\Studio2\*.zip; DestDir: {app}\data\Studio2; Components: MAIN
Source: ..\data\StudioIV\*.*; DestDir: {app}\data\StudioIV; Components: MAIN
Source: ..\data\Visicom\visicom.rom; DestDir: {app}\data\Visicom; Components: MAIN
Source: ..\data\Visicom\*.st2; DestDir: {app}\data\Visicom; Components: MAIN
Source: ..\data\Victory\victory.rom; DestDir: {app}\data\Victory; Components: MAIN
Source: ..\data\Victory\studio3.rom; DestDir: {app}\data\Victory; Components: MAIN
Source: ..\data\Victory\*.bin; DestDir: {app}\data\Victory; Components: MAIN
Source: ..\data\Victory\*.st2; DestDir: {app}\data\Victory; Components: MAIN
Source: ..\data\Victory\*.txt; DestDir: {app}\data\Victory; Components: MAIN
Source: ..\data\Victory\*.pdf; DestDir: {app}\data\Victory; Components: MAIN
Source: ..\data\Cidelsa\altair.rom; DestDir: {app}\data\Cidelsa; Components: MAIN
Source: ..\data\Cidelsa\destroyer set 1.bin; DestDir: {app}\data\Cidelsa; Components: MAIN
Source: ..\data\Cidelsa\destroyer set 2.bin; DestDir: {app}\data\Cidelsa; Components: MAIN
Source: ..\data\Cidelsa\draco.bin; DestDir: {app}\data\Cidelsa; Components: MAIN
Source: ..\data\Chip-8\Chip-8 Demos\*.*; DestDir: {app}\data\Chip-8\Chip-8 Demos; Components: MAIN
Source: ..\data\Chip-8\Chip-8 Games\*.*; DestDir: {app}\data\Chip-8\Chip-8 Games; Components: MAIN
Source: ..\data\Chip-8\Chip-8 Programs\*.*; DestDir: {app}\data\Chip-8\Chip-8 Programs; Components: MAIN
Source: ..\data\Chip-8\Chip-8 ETI660 Hybrids\*.*; DestDir: {app}\data\Chip-8\Chip-8 ETI660 Hybrids; Components: MAIN
Source: ..\data\Chip-8\Chip-8 Hires\*.*; DestDir: {app}\data\Chip-8\Chip-8 Hires; Components: MAIN
Source: ..\data\Chip-8\Chip-8 Hybrids\*.*; DestDir: {app}\data\Chip-8\Chip-8 Hybrids; Components: MAIN
Source: ..\data\Chip-8\Chip-8X\*.*; DestDir: {app}\data\Chip-8\Chip-8X; Components: MAIN
Source: ..\data\Chip-8\Chip-10\*.*; DestDir: {app}\data\Chip-8\Chip-10; Components: MAIN
Source: ..\data\Vip\vip.rom; DestDir: {app}\data\Vip; Components: MAIN
Source: ..\data\Vip\vip.32.rom; DestDir: {app}\data\Vip; Components: MAIN
Source: ..\data\Vip\fpb.bin; DestDir: {app}\data\Vip; Components: MAIN
Source: ..\data\Vip\fpb_color.bin; DestDir: {app}\data\Vip; Components: MAIN
Source: ..\data\Vip\*.ram; DestDir: {app}\data\Vip; Components: MAIN
Source: ..\data\Vip\*.bin; DestDir: {app}\data\Vip; Components: MAIN
Source: ..\data\Vip\chip8.stepper.hex; DestDir: {app}\data\Vip; Components: MAIN
Source: ..\data\Vip\chip10.hex; DestDir: {app}\data\Vip; Components: MAIN
Source: ..\data\VipII\vip.rom; DestDir: {app}\data\VipII; Components: MAIN
Source: ..\data\VipII\vip.32.rom; DestDir: {app}\data\VipII; Components: MAIN
Source: ..\data\VipII\fpb.rom; DestDir: {app}\data\VipII; Components: MAIN
Source: ..\data\VipII\*.ram; DestDir: {app}\data\VipII; Components: MAIN
Source: ..\data\VipII\chip10.hex; DestDir: {app}\data\VipII; Components: MAIN
Source: ..\data\MCDS\*.bin; DestDir: {app}\data\MCDS; Components: MAIN
Source: ..\data\MS2000\*.bin; DestDir: {app}\data\MS2000; Components: MAIN
Source: ..\data\MS2000\MICRODOS\*.*; DestDir: {app}\data\MS2000\MICRODOS; Components: MAIN
Source: ..\data\MS2000\microdos.img; DestDir: {app}\data\MS2000\; Components: MAIN
Source: ..\data\MS2000\basic1.img; DestDir: {app}\data\MS2000\; Components: MAIN
Source: ..\data\MS2000\PLM 1800.img; DestDir: {app}\data\MS2000\; Components: MAIN
Source: ..\data\MS2000\RP.img; DestDir: {app}\data\MS2000\; Components: MAIN
Source: ..\data\MS2000\BASIC\*.*; DestDir: {app}\data\MS2000\BASIC; Components: MAIN
Source: ..\data\MS2000\Software\*.*; DestDir: {app}\data\MS2000\Software; Components: MAIN
Source: ..\data\MS2000\PLM\*.*; DestDir: {app}\data\MS2000\PLM; Components: MAIN
Source: ..\data\MS2000\RP\*.*; DestDir: {app}\data\MS2000\RP; Components: MAIN
Source: ..\data\Velf\*.bin; DestDir: {app}\data\Velf; Components: MAIN
Source: ..\data\Velf\VELFbios-v3.1.HEX; DestDir: {app}\data\Velf; Components: MAIN
Source: ..\data\Velf\VELFbios-v3.1.LST; DestDir: {app}\data\Velf; Components: MAIN
Source: ..\data\Velf\*.ram; DestDir: {app}\data\Velf; Components: MAIN
Source: ..\data\TMC600\*.bin; DestDir: {app}\data\TMC600; Components: MAIN
Source: ..\data\TMC600\demo.txt; DestDir: {app}\data\TMC600; Components: MAIN
Source: ..\data\TMC600\demo2.txt; DestDir: {app}\data\TMC600; Components: MAIN
Source: ..\data\TMC600\snoopy.txt; DestDir: {app}\data\TMC600; Components: MAIN
Source: ..\data\TMC600\demo.tmc600; DestDir: {app}\data\TMC600; Components: MAIN
Source: ..\data\TMC600\demo2.tmc600; DestDir: {app}\data\TMC600; Components: MAIN
Source: ..\data\TMC600\snoopy.tmc600; DestDir: {app}\data\TMC600; Components: MAIN
Source: ..\data\TMC1800\telmac1800.rom; DestDir: {app}\data\TMC1800; Components: MAIN
Source: ..\data\TMC1800\*.ram; DestDir: {app}\data\TMC1800; Components: MAIN
Source: ..\data\TMC2000\telmac2000.rom; DestDir: {app}\data\TMC2000; Components: MAIN
Source: ..\data\TMC2000\*.ram; DestDir: {app}\data\TMC2000; Components: MAIN
Source: ..\data\Nano\nano.rom; DestDir: {app}\data\Nano; Components: MAIN
Source: ..\data\Nano\*.ram; DestDir: {app}\data\Nano; Components: MAIN
Source: ..\data\Pecom\*.bin; DestDir: {app}\data\Pecom; Components: MAIN
Source: ..\data\Pecom\*.pecom; DestDir: {app}\data\Pecom; Components: MAIN
Source: ..\data\Eti\eti-660.bin; DestDir: {app}\data\Eti; Components: MAIN
Source: ..\data\Cosmicos\*.bin; DestDir: {app}\data\Cosmicos; Components: MAIN
Source: ..\data\Membership\*.bin; DestDir: {app}\data\Membership; Components: MAIN
Source: ..\data\Membership\*.rom; DestDir: {app}\data\Membership; Components: MAIN
Source: ..\data\Membership\*.hex; DestDir: {app}\data\Membership; Components: MAIN
Source: ..\data\Membership\*.txt; DestDir: {app}\data\Membership; Components: MAIN
Source: ..\data\Microtutor\*.bin; DestDir: {app}\data\Microtutor; Components: MAIN
Source: ..\data\Elf2K\v87a.bin; DestDir: {app}\data\Elf2K; Components: MAIN
Source: ..\data\Elf2K\v88.bin; DestDir: {app}\data\Elf2K; Components: MAIN
Source: ..\data\Elf2K\intel8275.bin; DestDir: {app}\data\Elf2K; Components: MAIN
Source: ..\data\Elf2K\vt52.a.bin; DestDir: {app}\data\Elf2K; Components: MAIN
Source: ..\data\Elf2K\vt52.b.bin; DestDir: {app}\data\Elf2K; Components: MAIN
Source: ..\data\Elf2K\vt100.bin; DestDir: {app}\data\Elf2K; Components: MAIN
Source: ..\data\Elf2K\elfos2k_0_2_8.hex; DestDir: {app}\data\Elf2K; Components: MAIN
Source: ..\data\Elf2K\LOAD-8275.hex; DestDir: {app}\data\Elf2K; Components: MAIN
Source: ..\data\Elf2K\elf2k-installation.ide; DestDir: {app}\data\Elf2K; Components: MAIN
Source: ..\data\Elf2K\clock2.hex; DestDir: {app}\data\Elf2K; Components: MAIN
Source: ..\data\Elf2K\Clock\*.*; DestDir: {app}\data\Elf2K\Clock\; Components: MAIN
Source: ..\data\Elf2K\1802 Disassembler.hex; DestDir: {app}\data\Elf2K; Components: MAIN
Source: ..\data\Elf2K\1802 Disassembler\*.*; DestDir: {app}\data\Elf2K\1802 Disassembler\; Components: MAIN
Source: ..\data\Elf2K\Tinyos2k\*.*; DestDir: {app}\data\Elf2K\Tinyos2k; Components: MAIN
Source: ..\data\Elf\bios.1.0.rom; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\bios.1.0.4.rom; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\elfos.0.2.6.hex; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\elfos.0.2.8.hex; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\biosio.elfos.0.2.5.rom; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\bios+biosiov92.rom; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\bios+biosiov93.rom; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\biosio.elfos.0.2.5_32.column.rom; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\bios+biosiov92_32.column.rom; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\bios+biosiov93_32.column.rom; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\mc6847.ntsc.round.bin; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\mc6847.ntsc.square.bin; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\mc6847.pal.round.bin; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\mc6847.pal.square.bin; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\mc6845.comx.bin; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\super.video.bin; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\intel8275.bin; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\vt52.a.bin; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\vt52.b.bin; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\vt100.bin; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\pixie-installation.ide; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\tms-installation.ide; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\gra-installation.ide; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\mc6845-installation.ide; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\mc6847-installation.ide; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\vt100-installation.ide; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\serial-installation.ide; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\rommapper.bin; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\chip8.hex; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\rcabug.hex; DestDir: {app}\data\Elf; Components: MAIN
Source: ..\data\Elf\Games\*.*; DestDir: {app}\data\Elf\Games; Components: MAIN
Source: ..\data\Elf\Music\*.*; DestDir: {app}\data\Elf\Music; Components: MAIN
Source: ..\data\Elf\QuestData\*.*; DestDir: {app}\data\Elf\QuestData; Components: MAIN
Source: ..\data\Elf\elf-emulation.com\*.*; DestDir: {app}\data\Elf\elf-emulation.com; Components: MAIN
Source: ..\data\Elf\elf-emulation.com\EdtAsm\*.*; DestDir: {app}\data\Elf\elf-emulation.com\EdtAsm; Components: MAIN
Source: ..\data\Elf\elf-emulation.com\RcForth Rom Version\*.*; DestDir: {app}\data\Elf\elf-emulation.com\RcForth Rom Version; Components: MAIN
Source: ..\data\Elf\elf-emulation.com\RcForth v1.0\*.*; DestDir: {app}\data\Elf\elf-emulation.com\RcForth v1.0; Components: MAIN
Source: ..\data\Elf\elf-emulation.com\RcLisp Rom Version\*.*; DestDir: {app}\data\Elf\elf-emulation.com\RcLisp Rom Version; Components: MAIN
Source: ..\data\Elf\elf-emulation.com\Tiny Basic Compiler Rom Version\*.*; DestDir: {app}\data\Elf\elf-emulation.com\Tiny Basic Compiler Rom Version; Components: MAIN
Source: ..\data\Elf\Netronics Tiny Basic\*.*; DestDir: {app}\data\Elf\Netronics Tiny Basic; Components: MAIN
Source: ..\data\Elf\netronic.tinyBasic.hex; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\Fig Forth 1802\*.*; DestDir: {app}\data\Elf\Fig Forth 1802; Components: MAIN
Source: ..\data\Elf\fig.forth.1802.hex; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\tiny.basic.interpreter.v2.hex; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\quest.tape.loader.hex; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\superbasic.1.4.bin; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\superbasic.1.45.bin; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\superbasic.1.46.bin; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\superbasic.1.47.bin; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\superbasic.3.0.bin; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\superbasic.5.0.bin; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\superbasic.6.0.bin; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\rca.basic3.v1.1.hex; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\rca.basic4.v1.1.install.hex; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\supermon.hex; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\super.gold.monitor.hex; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\mini.monitor.and.super.basic.hex; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\giantboard.hex; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\giantboard.v2.hex; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\tapeloader.txt; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\emma 02.cos; DestDir: {app}\data\Elf\; Components: MAIN
Source: ..\data\Elf\TinyosTS\*.*; DestDir: {app}\data\Elf\TinyosTS; Components: MAIN
Source: ..\data\Elf\Biosio\BIOSIO93.ROM; DestDir: {app}\data\Elf\Biosio; Components: MAIN
Source: ..\data\Elf\Biosio\BIOSIOV9.ROM; DestDir: {app}\data\Elf\Biosio; Components: MAIN
Source: ..\data\Elf\Biosio\BIOSiov9REQ.txt; DestDir: {app}\data\Elf\Biosio; Components: MAIN
Source: ..\data\Elf\Biosio\GRAINIZ.ROM; DestDir: {app}\data\Elf\Biosio; Components: MAIN
Source: ..\data\Elf\Biosio\GRAINIZnotes.txt; DestDir: {app}\data\Elf\Biosio; Components: MAIN
Source: ..\data\Elf\Biosio\PIXINIZ.ROM; DestDir: {app}\data\Elf\Biosio; Components: MAIN
Source: ..\data\Elf\Biosio\pixiniznotes.txt; DestDir: {app}\data\Elf\Biosio; Components: MAIN
Source: ..\data\Elf\Biosio\SERINIZ.ROM; DestDir: {app}\data\Elf\Biosio; Components: MAIN
Source: ..\data\Elf\Biosio\seriniznotes.txt; DestDir: {app}\data\Elf\Biosio; Components: MAIN
Source: ..\data\Elf\Biosio\TMSINIZ.ROM; DestDir: {app}\data\Elf\Biosio; Components: MAIN
Source: ..\data\Elf\Biosio\TMSINIZnotes.txt; DestDir: {app}\data\Elf\Biosio; Components: MAIN
Source: ..\data\Elf\Biosio\VIDINIZ.ROM; DestDir: {app}\data\Elf\Biosio; Components: MAIN
Source: ..\data\Elf\Biosio\VIDINIZnotes.txt; DestDir: {app}\data\Elf\Biosio; Components: MAIN
Source: ..\data\Elf\biosioPS2\BIOSPSV1.ROM; DestDir: {app}\data\Elf\BiosioPS2; Components: MAIN
Source: ..\data\Elf\biosioPS2\BIOSPSV1REQ.txt; DestDir: {app}\data\Elf\BiosioPS2; Components: MAIN
Source: ..\data\Elf\biosioPS2\PSiniz.rom; DestDir: {app}\data\Elf\BiosioPS2; Components: MAIN
Source: ..\data\Elf\biosioPS2\PSiniznotes.txt; DestDir: {app}\data\Elf\BiosioPS2; Components: MAIN
Source: ..\images\*.*; DestDir: {app}\images; Components: MAIN
Source: ..\src\*.*; DestDir: {app}\src; Components: SOURCEFILES
Source: ..\Emma 02 vc9.sln; DestDir: {app}; Components: SOURCEFILES
Source: ..\Emma 02 vc9.vcproj; DestDir: {app}; Components: SOURCEFILES
Source: ..\Emma 02.rc; DestDir: {app}; Components: SOURCEFILES

[Icons]
Name: {group}\Emma 02; Filename: {app}\Emma 02.exe; WorkingDir: {app}; Components: MAIN
Name: {group}\{cm:UninstallProgram,Emma 02}; Filename: {uninstallexe}; Components: MAIN
Name: {commondesktop}\Emma 02; Filename: {app}\Emma 02.exe; WorkingDir: {app}; Tasks: desktopicon


[Run]
Filename: {tmp}\vcredist_x86.exe; Parameters: /quiet; Components: MAIN
Filename: {app}\Emma 02.exe; Description: {cm:LaunchProgram,Emma 02}; WorkingDir: {app}; Flags: nowait postinstall skipifsilent; OnlyBelowVersion: 0,6

[Components]
Name: MAIN; Description: Main Files; Types: full compact custom minimum; Flags: disablenouninstallwarning fixed
Name: SOURCEFILES; Description: Install Source Files; Types: full; Flags: disablenouninstallwarning

[Types]
Name: full; Description: Full installation
Name: compact; Description: Compact installation
Name: minimum; Description: Minimum installation
Name: custom; Description: Custom installation; Flags: iscustom

[Code]
procedure CurStepChanged(CurStep: TSetupStep);

  var
    ResultCode: Integer;
    Uninstall: String;
    StrVersion: String;
    IntVersion: Integer;
    UserDir: String;
    OldUserDir: String;
    MajorVersion: Cardinal;
    MinorVersion: Cardinal;
  begin
    if (CurStep = ssInstall) then begin

      if RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\1802 Emulator_is1', 'UninstallString', Uninstall) then begin
        StrVersion := '0';
        RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\1802 Emulator_is1', 'DisplayVersion', StrVersion);
        IntVersion := StrToInt (StrVersion);
        if (IntVersion < 4) then begin
          if MsgBox('An older version of the 1802 Emulator has been detected and needs to be uninstalled, do you want to continue?', mbConfirmation, MB_YESNO) = IDNO then
          begin
             Abort;
          end;
          Exec(RemoveQuotes(Uninstall), ' /SILENT', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode);
          UserDir := ExpandConstant('{userappdata}') + '\Emma 02';
          OldUserDir := ExpandConstant('{userappdata}') + '\1802_Emulator';
          if DirExists(OldUserDir) = True then
          begin
            if RenameFile(OldUserDir, UserDir) = False then
            begin
              MsgBox('Not all user data could be moved, please check 1802_Emulator user directory and manually move needed files to the Emma 02 folder.', mbInformation, MB_OK);
            end;
          end;
        end;
      end;

      if RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Emma 02_is1', 'UninstallString', Uninstall) then begin
        MajorVersion := 0;
        MinorVersion := 0;
        RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Emma 02_is1', 'MajorVersion', MajorVersion);
        RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Emma 02_is1', 'MinorVersion', MinorVersion);
        if (MajorVersion < 2) then begin
          if (MinorVersion < 18) then begin
            if MsgBox('An older version of Emma 02 has been detected and needs to be uninstalled, do you want to continue?', mbConfirmation, MB_YESNO) = IDNO then
            begin
              Abort;
            end;
            Exec(RemoveQuotes(Uninstall), ' /SILENT', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode);
          end;
        end;
      end;

	    if IsWin64 then
  	  begin
	      if RegQueryStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Emma 02_is1', 'UninstallString', Uninstall) then
        begin
          if MsgBox('A 64 bit version of Emma 02 has been detected and needs to be uninstalled, do you want to continue?', mbConfirmation, MB_YESNO) = IDNO then
          begin
            Abort;
          end;
          Exec(RemoveQuotes(Uninstall), ' /SILENT', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode);
        end;
      end;

    end;
  end;
end.

[Registry]
Root: HKCU; Subkey: Software\1802_emulator; Flags: deletekey; Components: ; Tasks: ; Languages: 
Root: HKCU; Subkey: Software\Marcel van Tongeren\Emma 02; Flags: deletekey; Components: ; Tasks: ; Languages: 
