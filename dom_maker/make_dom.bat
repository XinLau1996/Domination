rem Domination Build Batch, really shitty batch file :D
rem 批量构建《统治》，真是糟糕的批处理文件 :D
rem needs makepbo from mikero https://mikero.bytex.digital/Downloads needs makePBO and dePBO
rem 需要 MakePBO 跟 DePbo 来自 mikero 下载 https://mikero.bytex.digital/Downloads
rem just copy MakePBO.exe and DePbo.dll in the dom_maker folder
rem 只需复制 MakePBO.exe和 DePbo.dll 到 dom_maker 文件夹中

set BASE_MASTER=co30_Domination.Altis
set MASTER=co30_Domination.Altis
set D_VER=4_52
set D_BNVER=4.52
set D_NUM_PLAYERS=40
set D_NUM_PLAYERS_TT=50
set D_NUM_PLAYERS_CO=40

set CUR_DIR=%cd%
set WORK_DIR=E:\DomSQFC

del *.pbo

rmdir /S /Q %WORK_DIR%

md %MASTER%
xcopy ..\%BASE_MASTER%\*.* %MASTER% /E /Y

rem Blufor Altis
rem 蓝方 Altis
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor.altis
set MISSION_SQM=..\mission_sqm\mission_blufor_altis_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_altis.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%

rem goto cleanup
rem exit

rem Blufor SOG Prairie
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor_vn.cam_lao_nam
set MISSION_SQM=..\mission_sqm\mission_blufor_cam_lao_nam_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_cam_lao_nam.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_default.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_UNSUNG.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q ma3a
rmdir /S /Q ma3m
rmdir /S /Q mifa3
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem TT Tanoa
set NEW_VER=tvt%D_NUM_PLAYERS_TT%_domination_%D_VER%_tt.tanoa
set MISSION_SQM=..\mission_sqm\mission_tt_tanoa_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_tt_tanoa.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_gmcwg.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3a
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor Stratis
rem 蓝方 Stratis
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor.stratis
set MISSION_SQM=..\mission_sqm\mission_blufor_stratis_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_stratis.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q ma3a
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor RHS Altis
rem 蓝方 RHS Altis
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_rhs_blufor.altis
set MISSION_SQM=..\mission_sqm\mission_blufor_rhs_altis_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_rhs_altis.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_default.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor Carrier Altis
rem 蓝方 Carrier Altis
set NEW_VER=co%D_NUM_PLAYERS%_domination_carrier_%D_VER%_blufor.altis
set MISSION_SQM=..\mission_sqm\mission_blufor_carrier_altis_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_carrier_altis.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor Malden
rem 蓝方 Malden
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor.malden
set MISSION_SQM=..\mission_sqm\mission_blufor_malden_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_malden.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q mifa3
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q ma3a
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Opfor Altis
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_opfor.altis
set MISSION_SQM=..\mission_sqm\mission_opfor_altis_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_opfor_altis.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Opfor RHS Altis
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_rhs_opfor.altis
set MISSION_SQM=..\mission_sqm\mission_opfor_rhs_altis_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_opfor_rhs_altis.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_default.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor Chernarus
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor.chernarus
set MISSION_SQM=..\mission_sqm\mission_blufor_chernarus_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_chernarus.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_default.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q ma3a
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor Chernarus 2020 (A3)
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor.cup_chernarus_A3
set MISSION_SQM=..\mission_sqm\mission_blufor_chernarus_a3_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_chernarus.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_default.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q ma3a
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor Chernarus Winter
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor.chernarus_winter
set MISSION_SQM=..\mission_sqm\mission_blufor_chernarus_winter_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_chernarus_winter.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_IFA3.sqf
del i_weapons_default.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q ma3a
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor Takistan
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor.takistan
set MISSION_SQM=..\mission_sqm\mission_blufor_takistan_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_takistan.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_IFA3.sqf
del i_weapons_default.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q ma3a
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor Sahrani
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor.sara
set MISSION_SQM=..\mission_sqm\mission_blufor_sara_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_sara.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_IFA3.sqf
del i_weapons_default.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q ma3a
rmdir /S /Q moa
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor Tanoa
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor.tanoa
set MISSION_SQM=..\mission_sqm\mission_blufor_tanoa_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_tanoa.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q ma3a
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor Weferlingen Summer
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor.gm_weferlingen_summer
set MISSION_SQM=..\mission_sqm\mission_blufor_weferlingen_summer.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_weferlingen_summer.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_default.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q ma3a
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q mifa3
rmdir /S /Q ma3m
rmdir /S /Q ma3s
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor Weferlingen Winter
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor.gm_weferlingen_winter
set MISSION_SQM=..\mission_sqm\mission_blufor_weferlingen_winter.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_weferlingen_winter.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_default.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q ma3a
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q mifa3
rmdir /S /Q ma3m
rmdir /S /Q ma3s
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor Livonia
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor.enoch
set MISSION_SQM=..\mission_sqm\mission_blufor_enoch_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_enoch.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_gmcwg.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q ma3a
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q mifa3
rmdir /S /Q ma3m
rmdir /S /Q ma3s
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Opfor IFA3
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_opfor_ifa3.staszow
set MISSION_SQM=..\mission_sqm\mission_opfor_ifa3_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_opfor_ifa3.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_default.sqf
del i_weapons_CUP.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q ma3a
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Blufor Unsung
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_blufor_usnung.song_bin_tanh
set MISSION_SQM=..\mission_sqm\mission_blufor_unsung_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_unsung.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_default.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q ma3a
rmdir /S /Q ma3m
rmdir /S /Q mifa3
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem Opfor CSLA
rem set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_opfor.stozec
rem set MISSION_SQM=..\mission_sqm\mission_opfor_csla_bin.sqm
rem set X_SETUP=..\mission_sqm\x_setup_opfor_csla.sqf
rem md %WORK_DIR%
rem xcopy %MASTER%\*.* %WORK_DIR% /E /Y
rem echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
rem echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
rem cd %WORK_DIR%
rem del i_weapons_rhs.sqf
rem del i_weapons_CUP.sqf
rem del i_weapons_IFA3.sqf
rem del i_weapons_UNSUNG.sqf
rem del i_weapons_gmcwg.sqf
rem del i_weapons_default.sqf
rem del i_weapons_vn.sqf
rem cd missions
rem rmdir /S /Q m
rem rmdir /S /Q moa
rem rmdir /S /Q msara
rem rmdir /S /Q ma3t
rem rmdir /S /Q ma3s
rem rmdir /S /Q ma3a
rem rmdir /S /Q ma3m
rem rmdir /S /Q mifa3
rem cd CUR_DIR
rem ArmaScriptCompiler.exe
rem rmdir /S /Q %WORK_DIR%


rem TT Altis
set NEW_VER=tvt%D_NUM_PLAYERS_TT%_domination_%D_VER%_tt.altis
set MISSION_SQM=..\mission_sqm\mission_tt_altis_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_tt_altis.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_gmcwg.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%


rem TT Malden
set NEW_VER=tvt%D_NUM_PLAYERS_TT%_domination_%D_VER%_tt.malden
set MISSION_SQM=..\mission_sqm\mission_tt_malden_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_tt_malden.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_rhs.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_gmcwg.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q mifa3
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q ma3a
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
makePbo -AJNP %NEW_VER%
rmdir /S /Q %NEW_VER%
rmdir /S /Q %WORK_DIR%

rem cleanup
:cleanup
rmdir /S /Q %MASTER%
del ddmnew.sqm
